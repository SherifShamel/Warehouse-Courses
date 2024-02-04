import 'package:flutter/material.dart';
import 'package:navigation_task/android_Screen.dart';

class CourseContainer extends StatelessWidget {
  final Color buttonColor;
  final String courseName;
  final String imageLocation;
  final Widget myScreen;
  const CourseContainer(
      {super.key,
      required this.buttonColor,
      required this.imageLocation,
      required this.courseName, required this.myScreen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 5),
          child: Image.asset(
            imageLocation,
          ),
        ),
        Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            //color: Color(0xFF02006b),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return myScreen;
                    },
                  ),
                );
              },
              child: Text(courseName),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    buttonColor,
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ))),
            ))
      ],
    );
  }
}
