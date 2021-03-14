
import 'package:flutter/material.dart';
import 'package:my_flutter/model/catalog.dart';
import 'package:my_flutter/widgets/Items_Widgets.dart';
class CartModel extends StatefulWidget {
  final Item cartItem;
  final BuildContext context;
  const CartModel({Key key, this.cartItem, this.context}) : super(key: key);

  @override
  _CartModelState createState() => _CartModelState();
}

class _CartModelState extends State<CartModel> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(widget.cartItem.imageUrl),
      title: Text(
        widget.cartItem.name,
        style: TextStyle(
          color: Theme.of(widget.context).textTheme.bodyText1.color,
        ),
      ),
      trailing: InkWell(
        onTap: (){
        },
          child: Icon(Icons.remove_circle,
            color: Theme.of(widget.context).textTheme.bodyText1.color,
          ),
      ),
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


