import 'package:flutter/material.dart';
import 'package:my_flutter/widgets/drawer.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: Container(
            child: Text(
              "Welcome to 30 days of flutter",
              style: TextStyle(
                fontSize: 28.0,
              ),
            ),
          ),
        ),
    );
  }
}
