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
        padding: EdgeInsets.only(top: 16),
        child: (ModelItem.items != null && ModelItem.items.isNotEmpty)
            ? GridView.builder(
                itemCount: ModelItem.items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final gridItem = ModelItem.items[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    clipBehavior: Clip.antiAlias,
                    elevation: 12,
                    shadowColor: Colors.deepPurple,
                    child: GridTile(
                      header:Container(
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                        child:Text(
                          gridItem.name,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(12),
                          child: Image.network(gridItem.imageUrl)
                      ),
                      footer: Container(
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                        child: Text(
                          " \$${gridItem.price.toString()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
