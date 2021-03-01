
import 'package:flutter/material.dart';
import 'package:my_flutter/widgets/theme.dart';
import 'file:///C:/Flutter_Projects/my_flutter/lib/pages/login_page.dart';
import 'pages/home_page.dart';
import 'file:///C:/Flutter_Projects/my_flutter/lib/utils/routes.dart';
void main(){
  runApp(
    MaterialApp(
      title: "Catalog App",
      theme: MyTheme.lightTheme(),
      initialRoute: MyRoutes.myHome ,
      routes: {
        MyRoutes.myLogin:(context) =>LoginPage(),
        MyRoutes.myHome:(context) => MyApp(),
      },
    )
  );
}

