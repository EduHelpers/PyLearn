import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import 'package:get/get.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Daily Quiz",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Color.fromRGBO(6, 23, 54, 0.9),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          width:
                              4), // Adjust the spacing between the text and the bell icon
                      AnimatedBell(),
                    ],
                  ),
                  InkWell(
                    onTap: () => Get.off(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20.0 * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Start Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedBell extends StatefulWidget {
  @override
  _AnimatedBellState createState() => _AnimatedBellState();
}

class _AnimatedBellState extends State<AnimatedBell>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      reverseDuration: Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation = Tween(begin: -0.1, end: 0.1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value * 10),
          // Adjust the amplitude of the animation
          child: Icon(
            Icons.notifications,
            // Replace this with the bell icon you want to use
            size: 24, // Adjust the size of the bell icon
            color: Colors.amber, // Adjust the color of the bell icon
          ),
        );
      },
    );
  }
}
