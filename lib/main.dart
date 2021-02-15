import 'package:flutter/material.dart';
import 'package:my_flutter/login_page.dart';
import 'home_page.dart';
void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.deepPurple,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) =>LoginPage(),
        '/home':(context) => MyApp(),
      },
    )
  );
}

