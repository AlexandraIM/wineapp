import 'package:flutter/foundation.dart';

class Item with ChangeNotifier {
  final String id;
  final String name;
  final String type;
  final String manufacturer;
  final int quantity;
  final int rating;
  final double price;
  final String description;
  final String imgUrl;

  Item({
    @required this.id,
    @required this.name,
    @required this.type,
    @required this.manufacturer,
    @required this.quantity,
    @required this.rating,
    @required this.price,
    this.description,
    this.imgUrl
  });
}