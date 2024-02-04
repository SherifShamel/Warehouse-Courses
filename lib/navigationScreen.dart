import 'package:flutter/material.dart';
import 'package:navigation_task/android_Screen.dart';
import 'package:navigation_task/full_stack_screen.dart';
import 'package:navigation_task/ios_Screen.dart';

import 'course_container.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RouteAppOne",
        ),
        backgroundColor: Color(0xFF001f85),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AndroidScreen();
                    },
                  ),
                );
              },
              child: const CourseContainer(
                  myScreen: AndroidScreen(),
                  buttonColor: Color(0xFF114ad2),
                  imageLocation: "assets/img/Android.jpeg",
                  courseName: "ANDROID COURSE"),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const IosScreen();
                    },
                  ),
                );
              },
              child: const CourseContainer(
                  myScreen: IosScreen(),
                  buttonColor: Color(0xFF114ad2),
                  imageLocation: "assets/img/IOS.jpeg",
                  courseName: "IOS COURSE"),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FullStackScreen();
                    },
                  ),
                );
              },
              child: const CourseContainer(
                buttonColor: Color(0xFF114ad2),
                imageLocation: "assets/img/fullStack.jpeg",
                courseName: "FULL STACK",
                myScreen: FullStackScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
