import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/model/catalog.dart';
import 'package:my_flutter/utils/routes.dart';
import 'package:my_flutter/model/cart_model.dart';

import 'alert_page.dart';
class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Theme.of(context).canvasColor,
      home: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Cart",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1.color,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: CartList(context: context,)),
              Container(
                padding:EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children:[
                          Text(
                            "Total",
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1.color,
                              fontSize: 28,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        Text(
                          "\$0",
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ]
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, MyRoutes.myAlert);
                      },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(StadiumBorder()),
                            backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                          ),
                          child: Text(
                        "Buy Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CartList extends StatefulWidget {
  final BuildContext context;

  const CartList({Key key, this.context}) : super(key: key);
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return (CartItems.ids!=null && CartItems.ids.isNotEmpty)?
      ListView.builder(
      itemCount: CartItems.totalNumOfItemsInCart,
        itemBuilder:(context,index){
          return CartModel(cartItem: ModelItem.getItemById(CartItems.ids[index]), context: widget.context,);
        }
    ):
        Container(
          alignment: Alignment.center,
          child: Text(
            "Your Cart is Empty",
            style: TextStyle(
              color: Theme.of(widget.context).textTheme.bodyText2.color,
            ),
          ),
        );
  }
}

