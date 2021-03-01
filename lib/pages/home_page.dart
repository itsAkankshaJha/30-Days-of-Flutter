import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_flutter/model/catalog.dart';
import 'package:my_flutter/widgets/Items_Widgets.dart';
import 'package:my_flutter/widgets/drawer.dart';
import 'package:flutter/services.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async{
   final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
   final jsonDecoded = jsonDecode(catalogJson);
   var productsData = jsonDecoded["Products"];
  }
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
