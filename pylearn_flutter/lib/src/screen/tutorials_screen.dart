import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:pylearn_flutter/src/screen/quiz_screen.dart';
import 'package:pylearn_flutter/src/screen/home.dart';
import 'package:get/get.dart';

class PythonTutorialApp extends StatefulWidget {
  @override
  _PythonTutorialAppState createState() => _PythonTutorialAppState();
}

class _PythonTutorialAppState extends State<PythonTutorialApp> {
  double _borderRadius = 7.0;
  int _currentProgressIndex = 0;

  void displayTutorial(
      BuildContext context, String htmlFilePath, String quizId) {
    print("Opening tutorial from HTML file: $htmlFilePath");

    WebViewController controller;

    // Create a WebView with a WebViewController
    WebView webView = WebView(
        initialUrl: 'file:///$htmlFilePath',
        javascriptMode:
            JavascriptMode.unrestricted, // Enable JavaScript in WebView
        onWebViewCreated: (WebViewController webViewController) {
          controller = webViewController;
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {});

    final Size screenSize = MediaQuery.of(context).size;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Tutorial"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0.5),
                  child: webView,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.off(QuizScreen(quizId: quizId));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(screenSize.width * 0.02),
                  ),
                  backgroundColor: Colors.green,
                ),
                child: Container(
                  width: screenSize.width * 0.25,
                  height: screenSize.height * 0.07,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: screenSize.width * 0.0),
                  child: Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenSize.width * 0.035,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Python Tutorial',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: null,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenSize.height * 0.12),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, screenSize.height * 0.03, screenSize.width * 0.735, 0),
                  child: Text(
                    'Section 1',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.01),
                Padding(
                  padding: EdgeInsets.only(right: screenSize.width * 0.72),
                  child: Text(
                    'Basics',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.015),
                for (int i = 0; i < tutorialItems.length; i++)
                  Column(
                    children: [
                      SizedBox(height: screenSize.height * 0.02),
                      SizedBox(
                        width: screenSize.width * 0.92,
                        height: screenSize.height * 0.1,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                final path = html_files[tutorialItems[i]];
                                if (path != null) {
                                  displayTutorial(
                                      context, path, tutorialItems[i]);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: EdgeInsets.only(
                                    right: screenSize.width * 0.1),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(_borderRadius),
                                  side: BorderSide(
                                    color: Colors.white24,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.04),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        (i + 1 < 10 ? '0' : '') +
                                            (i + 1).toString() +
                                            '.',
                                        style: TextStyle(
                                          fontSize: screenSize.width * 0.07,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      SizedBox(width: screenSize.width * 0.06),
                                      Text(
                                        tutorialItems[i],
                                        style: TextStyle(
                                          fontSize: screenSize.width * 0.05,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: screenSize.width * 0.04),
                              child: SimpleCircularProgressBar(
                                progressStrokeWidth: 10,
                                backStrokeWidth: 10,
                                size: 30,
                                value: i * 5,
                                mergeMode: true,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                          height: screenSize.height *
                              0.01), // Add space between buttons
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // List of tutorial items
  final List<String> tutorialItems = [
    "Ввод и вывод \nданных",
    "Числовые типы \nданных",
    "Строковый тип \nданных",
    "Целочисленная \nарифметика",
    "Вещественная \nарифметика",
    "Модуль math",
    "Строковая \nарифметика",
    "Индексация и срезы",
    "Строковые методы",
    "Условные \nоператоры",
    "Вложенные условные \nоператоры",
    "Цикл for",
    "Цикл while",
    "Вложенные циклы"
  ];

  final Map<String, String> html_files = {
    "Ввод и вывод \nданных":
        'package:pylearn_flutter/src/tutorials_html/input_and_output.html',
    "Числовые типы \nданных": 'lib/tutorials_html/if_conditions.html',
    "Строковый тип \nданных": 'lib/tutorials_html/if_conditions.html',
    "Целочисленная \nарифметика": 'lib/tutorials_html/if_conditions.html',
    "Вещественная арифметика": 'lib/tutorials_html/if_conditions.html',
    "Модуль math": 'lib/tutorials_html/if_conditions.html',
    "Строковая арифметика": 'lib/tutorials_html/if_conditions.html',
    "Индексация и срезы": 'lib/tutorials_html/if_conditions.html',
    "Строковые методы": 'lib/tutorials_html/if_conditions.html',
    "Условные \nоператоры":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/lib/src/screen/tutorials_html/if_conditions.html',
    "Условные операторы №2": 'lib/tutorials_html/if_conditions.html',
    "Цикл for": 'lib/tutorials_html/if_conditions.html',
    "Цикл while": 'lib/tutorials_html/if_conditions.html',
    "Вложенные циклы": 'lib/tutorials_html/if_conditions.html',
  };
}

class SimpleCircularProgressBar extends StatelessWidget {
  final double value;
  final double maxValue;
  final double progressStrokeWidth;
  final double backStrokeWidth;
  final double size;
  final bool mergeMode;

  SimpleCircularProgressBar({
    this.value = 0,
    this.maxValue = 100,
    this.progressStrokeWidth = 10,
    this.backStrokeWidth = 10,
    this.size = 30,
    this.mergeMode = true,
  });

  @override
  Widget build(BuildContext context) {
    double percentage = (value / maxValue).clamp(0.0, 1.0);
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            value: percentage,
            strokeWidth: progressStrokeWidth,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
        if (mergeMode && percentage == 1.0) // Check if progress is complete
          Center(
            child: Icon(
              Icons.check,
              size: size / 2,
              color: Colors.green,
            ),
          ),
      ],
    );
  }
}
