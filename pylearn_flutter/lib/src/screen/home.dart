import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:pylearn_flutter/src/screen/tutorials_screen.dart';

// double getProgress(WidgetRef ref) {
// double res = stats[0].quiz1.toDouble() +
//     stats[0].quiz2.toDouble() +
//     stats[0].quiz3.toDouble() +
//     stats[0].quiz4.toDouble() +
//     stats[0].quiz5.toDouble() +
//     stats[0].quiz6.toDouble() +
//     stats[0].quiz7.toDouble() +
//     stats[0].quiz8.toDouble() +
//     stats[0].quiz9.toDouble() +
//     stats[0].quiz10.toDouble();

//   return res;
// }

class HomeScreen extends MainScreen {
  const HomeScreen({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(prov_stats);
    double progressValue = (stats[0].quiz1.toDouble() +
            stats[0].quiz2.toDouble() +
            stats[0].quiz3.toDouble() +
            stats[0].quiz4.toDouble() +
            stats[0].quiz5.toDouble() +
            stats[0].quiz6.toDouble() +
            stats[0].quiz7.toDouble() +
            stats[0].quiz8.toDouble() +
            stats[0].quiz9.toDouble() +
            stats[0].quiz10.toDouble()) /
        10;

    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Мои курсы',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'MainFont',
            fontWeight: FontWeight.w600,
            fontSize: screenSize.width * 0.05, // 5% of screen width
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Align children to the top
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: screenSize.height * 0.02), // 2% of screen height
              width: screenSize.width * 0.9, // 90% of screen width
              height: screenSize.height * 0.3, // 30% of screen height
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(
                    screenSize.width * 0.05), // 5% of screen width
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(right: screenSize.width * 0.04),
                          child: Text(
                            'Основы программирования\nна Python',
                            style: TextStyle(
                              fontFamily: 'Cygre',
                              fontSize: screenSize.width * 0.045,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Image.asset(
                          'lib/src/Assets/free-python-3629591-3032289.png',
                          width: screenSize.width * 0.1, // 5% of screen width
                          height: screenSize.width * 0.1, // 5% of screen width
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.8, // 87.5% of screen width
                    child: LinearProgressIndicator(
                      backgroundColor: Colors
                          .grey[300], // Set background color of progress bar
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.blue), // Set foreground color of progress bar
                      value:
                          progressValue, // Set progress value (between 0 and 1)
                      minHeight:
                          screenSize.height * 0.01, // 1% of screen height
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 0.05), // 5% of screen width
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${(progressValue * 100).toStringAsFixed(0)}% пройденных уроков', // Display the percentage value
                        style: TextStyle(
                          fontSize:
                              screenSize.width * 0.035, // 2.5% of screen width
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 0.05), // 5% of screen width
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PythonTutorialApp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenSize.width * 0.02),
                          ),
                          backgroundColor: Color.fromARGB(255, 88, 204, 84),
                        ),
                        child: Container(
                          width: screenSize.width * 0.25,
                          height: screenSize.height * 0.07,
                          alignment: Alignment.center,
                          padding:
                              EdgeInsets.only(left: screenSize.width * 0.0),
                          child: Text(
                            'Продолжить',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * 0.035,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
