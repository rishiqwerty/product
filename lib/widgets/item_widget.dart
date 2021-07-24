import 'package:corona/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWidgets extends StatelessWidget {
  @override
  final Item item;

  const ItemWidgets({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.descrp),
        trailing: Text("\₹ ${item.price}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.deepOrange),textScaleFactor: 1.2,),
      ),
    );
  }
}
