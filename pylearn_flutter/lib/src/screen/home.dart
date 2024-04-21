import 'package:flutter/material.dart';
import 'package:pylearn_flutter/src/tutorlal_screens/Intro.dart';
//import 'package:pylearn_flutter/src/Assets/free-python-3629591-3032289.png' as pic;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double progressValue = 0.2;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My education',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Cygre',
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Align children to the top
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: 20), // Adjust the top margin as needed
              width: 400, // Adjust the width as needed
              height: 300, // Adjust the height as needed
              decoration: BoxDecoration(
                color: Color.fromRGBO(212, 225, 243, 0.9019607843137255),
                borderRadius: BorderRadius.circular(
                    20), // Adjust the border radius as needed
                border: Border.all(
                  color: Colors.black,
                  width: 5, // Adjust the border width as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20), // Add padding between text and image
                        child: Text(
                          'Python course for beginners',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Image.asset(
                      //   'package:pylearn_flutter/src/Assets/free-python-3629591-3032289.png', // Provide the path to your image asset
                      //   width: 30, // Adjust the width of the image
                      //   height: 30, // Adjust the height of the image
                      // ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 350, // Adjust the width as needed
                    child: LinearProgressIndicator(
                      backgroundColor: Colors
                          .grey[300], // Set background color of progress bar
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.blue), // Set foreground color of progress bar
                      value:
                          progressValue, // Set progress value (between 0 and 1)
                      minHeight: 10, // Set minimum height of the progress bar
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${(progressValue * 100).toStringAsFixed(0)}% of solved tasks', // Display the percentage value
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PythonTutorialScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Adjust the radius to change the button's curvature
                          ),
                          backgroundColor: Colors
                              .green, // Set the background color of the button
                        ),
                        child: Container(
                          width: 150, // Set a fixed width for the button
                          height: 70, // Set a fixed height for the button
                          alignment:
                              Alignment.center, // Align text to the center
                          padding: EdgeInsets.only(
                              left: 0), // Add some left padding to text
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white, // Set text color to white
                              fontSize: 16, // Set font size
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
