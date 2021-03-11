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
  static  List<Item> items;
  static Item getItemById(int idNum){
    return items.firstWhere((element) => element.id==idNum);
  }
}
