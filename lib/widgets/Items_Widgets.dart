import 'package:flutter/material.dart';
import 'package:my_flutter/model/catalog.dart';

Widget itemWidget({@required Item item}){
  assert(item!=null);
  return Card(
    margin: EdgeInsets.all(16),
    shadowColor: Colors.deepPurple,
    child: ListTile(
      onTap: (){},
      leading: Image.network(item.imageUrl),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}",
        style: TextStyle(
          fontSize: 16,
          fontWeight:FontWeight.bold,
        ),
      ),
    ),
  );
}