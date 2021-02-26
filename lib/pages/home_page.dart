import 'package:flutter/material.dart';
import 'package:my_flutter/widgets/drawer.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(1000, (index) => "Item $index");
    return Scaffold(
      drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body:ListView.builder(
            itemBuilder:(context,index){
              return ListTile(
                leading: Text("${items[index]}"),
                trailing: Text("${items[index+1]}"),
              );
            }
        )
    );
  }
}
