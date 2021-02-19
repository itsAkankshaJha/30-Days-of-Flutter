import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatelessWidget {
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
                  "Welcome",
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
                decoration: InputDecoration(
                  hintText: "UserName",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelText: "Username",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "UserName",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelText: "Username",
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                ),
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Text("Login",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
