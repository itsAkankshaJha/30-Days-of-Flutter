import 'package:flutter/material.dart';
class MyTheme {
   static Color creamColor = Color(0xfff5f5f5);
  static ThemeData lightTheme({BuildContext context}) =>
    ThemeData(
      canvasColor: Colors.white,
      backgroundColor: Colors.white,
      cardColor: creamColor,
      shadowColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.deepPurple[900],
      ),
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
      canvasColor: Colors.black,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      shadowColor: Colors.grey[800],
      appBarTheme: AppBarTheme(
        color: Colors.white,
      ),
      backgroundColor: Colors.grey[900],
      cardColor: Colors.grey[850],
        primaryColor: Colors.white,
        accentColor: Colors.deepPurple,
        textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
            )
        )
    );
  }
}