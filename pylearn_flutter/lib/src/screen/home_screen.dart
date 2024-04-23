import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:pylearn_flutter/src/utils/stons.dart';
import 'package:pylearn_flutter/src/screen/home.dart';
import 'package:pylearn_flutter/src/screen/quiz.dart';
import 'package:pylearn_flutter/src/screen/profile.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

// class Home extends MainScreen {
//   const Home({super.key});

// @override
// Widget body(BuildContext context, WidgetRef ref) {
//   final stats = ref.watch(prov_stats);
//   int _currentIndex = 0;
//   final data = stats[0];

// return Center(
//     child: Column(
//   mainAxisSize: MainAxisSize.min,
//   children: [
//     ListView.builder(
//         itemCount: stats.length,
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         itemBuilder: (context, index) {
//           return Text(stats[0].id.toString());
//         }),
//     TextButton(
//         onPressed: () {
//           ref.read(prov.notifier).out();
//         },
//         child: Text("LOG OUT ANDREW!!!!!! TATE"))
//   ],
// ));

//   }
// }

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PyLearn',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'MainFont',
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color.fromRGBO(6, 23, 54, 0.9),
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: _currentIndex,
            children: [
              Quiz(),
              HomeScreen(),
              ProfileScreen(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlyingBottomBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FlyingBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  FlyingBottomBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(6, 23, 54, 0.9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FlyingBottomBarItem(
            icon: Icons.quiz,
            label: 'Quiz',
            index: 0,
            currentIndex: currentIndex,
            onTap: onTap,
          ),
          FlyingBottomBarItem(
            icon: Icons.home,
            label: 'Home',
            index: 1,
            currentIndex: currentIndex,
            onTap: onTap,
          ),
          FlyingBottomBarItem(
            icon: Icons.person,
            label: 'Profile',
            index: 2,
            currentIndex: currentIndex,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

class FlyingBottomBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final int currentIndex;
  final Function(int) onTap;

  FlyingBottomBarItem({
    required this.icon,
    required this.label,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ink(
            decoration: ShapeDecoration(
              color: index == currentIndex ? Colors.blue : Colors.transparent,
              shape: CircleBorder(),
            ),
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Icon(icon,
                  color: index == currentIndex ? Colors.white : Colors.grey,
                  size: index == currentIndex ? 36 : 30),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: index == currentIndex ? Colors.white : Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
