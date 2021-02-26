import 'package:flutter/material.dart';
import 'package:my_flutter/model/catalog.dart';
import 'package:my_flutter/widgets/Items_Widgets.dart';
import 'package:my_flutter/widgets/drawer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = List<String>.generate(100, (index) => ModelItem.items[0].desc);
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return itemWidget(item: ModelItem.items[0]);
          }),
    );
  }
}
