import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:wine_app/provider/wine_item.dart';
import 'package:wine_app/widgets/card_back.dart';

class WineCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wine = Provider.of<Item>(context, listen: false);
    return FlipCard(
        direction: FlipDirection.HORIZONTAL,
        back: CardBack(wine),
        front: Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.brown, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(4.0)),
          elevation: 10.0,
          margin: EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                wine.name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(wine.imgUrl)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Icon(
                      Icons.fastfood,
                      color: Theme.of(context).primaryColor,
                      size: 40.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      'x ${wine.quantity}',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text('Type:',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(wine.type,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
