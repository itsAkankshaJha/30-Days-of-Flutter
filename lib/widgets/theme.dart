import 'package:flutter/material.dart';
class MyTheme {
   static Color creamColor = Color(0xfff5f5f5);
  static ThemeData lightTheme({BuildContext context}) =>
    ThemeData(
      primarySwatch: Colors.deepPurple,
      primaryColor: Colors.deepPurple,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.deepPurple,
        ),
          bodyText2: TextStyle(
            color: Colors.deepPurple,
          )
      )
    );
  static ThemeData darkTheme({BuildContext context}){
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}