import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:pylearn_flutter/src/screen/newCourses.dart';
import 'package:pylearn_flutter/src/screen/tutorials_screen.dart';

class HomeScreen extends MainScreen {
  const HomeScreen({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    //final stats0 = ref.read(prov_stats.notifier).update();
    //final stats = ref.read(prov_stats.notifier);
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
            stats[0].quiz10.toDouble() +
            stats[0].quiz11.toDouble() +
            stats[0].quiz12.toDouble() +
            stats[0].quiz13.toDouble() +
            stats[0].quiz14.toDouble() +
            stats[0].quiz15.toDouble() +
            stats[0].quiz16.toDouble() +
            stats[0].quiz17.toDouble() +
            stats[0].quiz18.toDouble() +
            stats[0].quiz19.toDouble() +
            stats[0].quiz20.toDouble() +
            stats[0].quiz21.toDouble() +
            stats[0].quiz22.toDouble() +
            stats[0].quiz23.toDouble() +
            stats[0].quiz24.toDouble()) /
        24;

    final Size screenSize = MediaQuery.of(context).size;
    final Size sizeScreen = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(screenSize.width * 0.05,
                        screenSize.height * 0.03, 0, 0),
                    child: const Text(
                      "Мои курсы",
                      style: TextStyle(
                          fontFamily: 'MainFont',
                          fontWeight: FontWeight.w600,
                          fontSize: 40),
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: screenSize.height * 0.02),
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.3,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(screenSize.width * 0.05),
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
                          width: screenSize.width * 0.1,
                          height: screenSize.width * 0.1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.8,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey[300],
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.blue),
                      value: progressValue,
                      minHeight: screenSize.height * 0.01,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.05),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${(progressValue * 100).toStringAsFixed(0)}% пройденных уроков', // Display the percentage value
                        style: TextStyle(
                          fontSize: screenSize.width * 0.035,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.05),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PythonTutorialApp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenSize.width * 0.02),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 88, 204, 84),
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
            // Padding(
            //     padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.02,
            //         sizeScreen.height * 0.05, sizeScreen.width * 0.02, 0),
            //     child: Material(
            //         elevation: 5,
            //         borderRadius: BorderRadius.circular(20.0),
            //         color: Colors.blue.shade300,
            //         child: MaterialButton(
            //           minWidth: sizeScreen.width * 0.8,
            //           height: 55,
            //           onPressed: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) =>  newCourses()));
            //           },
            //           child: Stack(
            //             alignment: Alignment.center,
            //             children: [
            //               const Text(
            //                 'Ваши друзья',
            //                 style: TextStyle(fontSize: 16, color: Colors.white),
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.end,
            //                 children: [
            //                   Container(
            //                     padding: const EdgeInsets.all(6),
            //                     child: const Icon(Icons.people,
            //                         color: Colors.white),
            //                   )
            //                 ],
            //               )
            //             ],
            //           ),
            //         )))
          ],
        ),
      ),
    );
  }
}
