import 'package:flutter/material.dart';
import 'package:wine_app/provider/wine_item.dart';

class CardBack extends StatelessWidget {
  final Item wineItem;

  CardBack(this.wineItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.brown, 
        style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(4.0)
    ),
    elevation: 10.0,
    margin: EdgeInsets.all(15.0),
    child: Column(
      children: <Widget>[
        Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                wineItem.name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
      ],
    ),);
  }
}