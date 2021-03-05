import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/model/catalog.dart';
import 'package:my_flutter/pages/item_page.dart';
import 'package:my_flutter/utils/routes.dart';
import 'package:my_flutter/widgets/Items_Widgets.dart';
import 'package:my_flutter/widgets/drawer.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/widgets/theme.dart';

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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context,MyRoutes.myCart);
        },
        label: Icon(CupertinoIcons.cart),
      ),
      backgroundColor: Color(0xfff5f5f5),
      drawer: MyDrawer(),
      body: (ModelItem.items != null && ModelItem.items.isNotEmpty)
          ? CustomScrollView(
              slivers: [
                SliverAppBar(
                  elevation: 0,
                  expandedHeight: 100,
                  floating: false,
                  iconTheme: IconThemeData(
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.deepPurpleAccent,
                  centerTitle: true,
                  title: Padding(
                    padding: EdgeInsets.only(top: 22),
                    child: Text(
                      "Catalog App",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyItem(
                                          item: ModelItem.items[index],
                                        )));
                          },
                          child: itemWidget(
                            item: ModelItem.items[index],
                          ));
                    },
                    childCount: ModelItem.items.length,
                  ),
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
