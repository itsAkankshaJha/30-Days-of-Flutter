import 'package:flutter/material.dart';
class Item{
  final String desc;
  final String name;
  final String id;
  final num price;
  final String imageUrl;

  Item(this.desc, this.name, this.id, this.price, this.imageUrl);
}
class ModelItem{
 static final items = [
    Item("Iphone", "Iphone 12 pro", "phone", 999, "https://images-na.ssl-images-amazon.com/images/I/71uuDYxn3XL._SL1500_.jpg"),
  ];
}