import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text(
              "Welcome to 30 days of flutter",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
