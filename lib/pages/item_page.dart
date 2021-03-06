import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/model/catalog.dart';
import 'package:my_flutter/widgets/theme.dart';

class MyItem extends StatelessWidget {
  final Item item;

  const MyItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: 400,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).shadowColor,
                  ),
                  child: Hero(child: Image.network(item.imageUrl),
                    tag: Key(item.id.toString()),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      item.name,
                      style:TextStyle(
                        color: Theme.of(context).textTheme.bodyText2.color,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      item.desc,
                      style: TextStyle(
                        color: Colors.blueGrey[400],
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).shadowColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(22),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                             "\$${item.price.toString()}",
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Text(
                                  "Buy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
