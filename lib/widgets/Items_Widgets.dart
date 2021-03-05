import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_flutter/model/catalog.dart';
import 'package:my_flutter/widgets/theme.dart';

Widget itemWidget({@required Item item}){
  assert(item!=null);
  return Padding(
    padding: EdgeInsets.all(16),
    child: Container(
      height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            child: Hero(child: Image.network(item.imageUrl),
            tag: Key(item.id.toString()),),
            height: double.infinity,
            width: 150,
          ),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.indigo[900],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                      item.desc,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${item.price.toString()}",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(onPressed: (){},
                          style: ButtonStyle(
                          ),
                          child: Text(
                            "Buy",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
        ],
      ),
    ),
  );
}