import 'package:flutter/material.dart';

class FullStackScreen extends StatelessWidget {
  const FullStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteAppOne"),
        backgroundColor: Color(0xFF114ad2),
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/img/Bg.jpg"),
            fit: BoxFit.fill,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Image(
                    image: AssetImage("assets/img/fullStack.jpeg"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: const Text('''
Content Full Stack >>>>>

 •HTML	
 •HTML 5 
 •CSS
 •CSS3
 •SASS
 •Bootstrap 4
 •JavaScript
 •Regular expressions
 •ECMAScript 6
 •JQuery
 •angular 7
 •fabric.js
 •AJAX
 •JSON
 •Hosting and domains
 •Freelancing tips and tricks
 •PHP
 •MYSQL
 •MYSQL advanced queries and triggers
 •OOP 
 •Design Patterns
 •MVC
 •laravel 
 •build Api , Api authentication
 •connect wordpress with laravel
 •build wordpress web service 
 •agile
 •Scrum
 •Software development process
                  ''' ,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );;
  }
}
