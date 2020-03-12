import 'package:flutter/foundation.dart';

import './wine_item.dart';

class Items with ChangeNotifier{
  List<Item> _items = [
    Item(
      id: 'i1',
      name: 'Some Wine',
      type: 'Dry',
      manufacturer: 'Some Manufacturer',
      quantity: 2,
      rating: 5,
      price: 134.56,
      description: 'Some nice description',
      imgUrl: 'https://cdn.shopify.com/s/files/1/0111/1462/products/jacobs-creek-merlot-australian-red-wine-deals_300x300.jpg?v=1435173515'
    )
  ];

  List<Item> get items {
    return [..._items];
  }

}
