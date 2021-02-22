

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_flutter/routes.dart';

import 'home_page.dart';
bool pressed = false;
String name = "";
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: false,
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 150,
              child: Center(
                child: Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Image(
              image: AssetImage('assets/images/login_image.png'),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                onChanged: (value){
                  name = value;
                  setState(() {
                  });
                },
                decoration: InputDecoration(
                  hintText: "John Smith",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelText: "Username",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            InkWell(
              onTap:() async {
                setState(() {
                  pressed = true;
                });
                await Future.delayed(Duration(microseconds: 700));
                 Navigator.pushNamed(context, MyRoutes.myHome);
              },
              child: AnimatedContainer(
                duration: Duration(microseconds: 700),
                alignment: Alignment.center,
                height: 50,
                width: pressed?50:130,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: pressed?BorderRadius.circular(50): BorderRadius.circular(8),
                ),
                child:pressed?Icon(
                  Icons.done,
                  color: Colors.green,
                  size: 44,
                ):
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
