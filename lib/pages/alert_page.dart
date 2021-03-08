import 'package:flutter/material.dart';
import 'package:my_flutter/utils/routes.dart';
class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body:Container(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "This feature is not supported yet",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child:
                    Text(
                      "Go Back",
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
