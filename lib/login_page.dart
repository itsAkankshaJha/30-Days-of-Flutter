import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login",
            style: TextStyle(
            fontSize: 40.0,
              fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}
