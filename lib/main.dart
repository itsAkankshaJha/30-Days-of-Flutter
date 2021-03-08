
import 'package:flutter/material.dart';
import 'package:my_flutter/pages/alert_page.dart';
import 'package:my_flutter/pages/cart_page.dart';
import 'package:my_flutter/widgets/theme.dart';
import 'file:///C:/Flutter_Projects/my_flutter/lib/pages/login_page.dart';
import 'pages/home_page.dart';
import 'utils/routes.dart';
void main(){
  runApp(
    MaterialApp(
      title: "Catalog App",
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(),
      darkTheme: MyTheme.darkTheme(),
      initialRoute: MyRoutes.myHome ,
      routes: {
        MyRoutes.myLogin:(context) =>LoginPage(),
        MyRoutes.myHome:(context) => MyApp(),
        MyRoutes.myCart:(context) =>MyCart(),
        MyRoutes.myAlert:(context)=>Alert(),
      },
    )
  );
}

