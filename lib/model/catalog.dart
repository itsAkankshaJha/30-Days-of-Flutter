import 'package:flutter/material.dart';

class Item {
  final int id;
  final String desc;
  final String name;
  final num price;
  final String color;
  final String imageUrl;

  Item({this.desc, this.name, this.id, this.price, this.imageUrl, this.color});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        desc: map["desc"],
        name: map["name"],
        color: map["color"],
        price: map["price"],
        imageUrl: map["image"]);
  }
}

class ModelItem {
  static  List<Item> items = [
    Item(
        desc: "Iphone",
        name: "Iphone",
        id: 1,
        price: 999,
        imageUrl:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-family-hero?wid=940&amp;hei=1112&amp;fmt=jpeg&amp;qlt=80&amp;op_usm=0.5,0.5&amp;.v=1604021663000"),
  ];
}
