import 'package:flutter/material.dart';
import 'package:my_flutter/login_page.dart';
import 'home_page.dart';
import 'package:my_flutter/routes.dart';
void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.deepPurple,
      ),
      initialRoute: MyRoutes.myLogin ,
      routes: {
        MyRoutes.myLogin:(context) =>LoginPage(),
        MyRoutes.myHome:(context) => MyApp(),
      },
    )
  );
}

