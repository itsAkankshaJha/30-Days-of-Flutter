
import 'package:flutter/material.dart';
import 'package:my_flutter/model/catalog.dart';
class CartModel extends StatefulWidget {
  final Item cartItem;
  const CartModel({Key key, this.cartItem}) : super(key: key);

  @override
  _CartModelState createState() => _CartModelState();
}

class _CartModelState extends State<CartModel> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.cartItem.name,
      ),
      trailing: Icon(Icons.remove_circle),
    );
  }
}
class CartItems extends StatefulWidget {
  static List<int> ids =[];
  static int totalNumOfItemsInCart = ids.length;
  @override
  _CartItemsState createState() => _CartItemsState();
}
class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


