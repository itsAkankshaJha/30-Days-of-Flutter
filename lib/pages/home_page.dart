import 'dart:convert';

import 'package:flutter/cupertino.dart';
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

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final jsonDecoded = jsonDecode(catalogJson);
    var productsData = jsonDecoded["products"];
    ModelItem.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(4),
        child:(ModelItem.items!=null && ModelItem.items.isNotEmpty) ?ListView.builder(
            itemCount: ModelItem.items.length,
            itemBuilder: (context, index) {
              return itemWidget(item: ModelItem.items[index]);
            }):
            Center(
              child: CircularProgressIndicator(),
            )
        ,
      ),
    );
  }
}
