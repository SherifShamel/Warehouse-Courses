import 'package:flutter/material.dart';
import 'package:navigation_task/navigationScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // colorPrimary = #001f85
  // colorPrimaryDark = #02006b
  // colorAccent = #114ad2
  // white = #fff

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: NavigationScreen()
    );
  }


}