import 'package:flutter/material.dart';
class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Theme.of(context).canvasColor,
      home: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Cart",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1.color,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
