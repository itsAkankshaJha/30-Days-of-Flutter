import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/login_image.png'),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "UserName",
                labelText: "Username"
              ),
            ),
            TextField(
                decoration: InputDecoration(
            hintText: "Password",
            labelText: "Password"
              ),
            )
          ]
        ),
      ),
    );
  }
}
