

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_flutter/routes.dart';

import 'home_page.dart';

bool pressed = false;
String name = "";
final _formKey = GlobalKey<FormState>();
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  moveToHome(BuildContext context) async{
    if(_formKey.currentState.validate()) {
      setState(() {
        pressed = true;
      });
      await Future.delayed(Duration(microseconds: 800));
      await Navigator.pushNamed(context, MyRoutes.myHome);
      setState(() {
        pressed = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: false,
        child: Center(
          child: Form(
            key: _formKey,
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
                height: 200,
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  validator:(value){
                    if(value.isEmpty){
                      return "Username cannot be empty";
                    }
                    return null;
                  },
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
                  validator: (value){
                    if(value.isEmpty){
                      return "password cannot be empty";
                    }
                    else if(value.length<6){
                      return "password should be at least 6 characters long";
                    }
                    return null;
                  },
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
              Material(
                color: Colors.deepPurple,
                  borderRadius: pressed?BorderRadius.circular(50): BorderRadius.circular(8),
                child: InkWell(
                  onTap:() => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(microseconds: 800),
                    alignment: Alignment.center,
                    height: 50,
                    width: pressed?50:130,
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
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
