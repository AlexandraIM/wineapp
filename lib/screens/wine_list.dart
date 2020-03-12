import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_app/main.dart';
import 'package:wine_app/screens/add_wine_screen.dart';
import 'package:wine_app/widgets/app_drawer.dart';
import 'package:wine_app/widgets/wine_cart.dart';
import '../provider/wine_items.dart';
import '../provider/wine_item.dart';

class WineListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wineItems = Provider.of<Items>(context);
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
          title: Text(
            'My Wine Collection',
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add), onPressed: (){
              Navigator.of(context).pushNamed(AddWineScreen.routeName);
            },)
          ]),
      backgroundColor: backgroundColor,
      body: ListView.builder(
          itemCount: wineItems.items.length,
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(value: wineItems.items[i], child: WineCart(),),
          padding: const EdgeInsets.all(8),),
    );
  }
}
