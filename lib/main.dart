import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_app/screens/add_wine_screen.dart';
import 'package:wine_app/screens/wine_list.dart';

import './provider/wine_items.dart';

void main() => runApp(MyApp());

Map<int, Color> color =
  {
    50:Color.fromRGBO(136,14,79, .1),
    100:Color.fromRGBO(136,14,79, .2),
    200:Color.fromRGBO(136,14,79, .3),
    300:Color.fromRGBO(136,14,79, .4),
    400:Color.fromRGBO(136,14,79, .5),
    500:Color.fromRGBO(136,14,79, .6),
    600:Color.fromRGBO(136,14,79, .7),
    700:Color.fromRGBO(136,14,79, .8),
    800:Color.fromRGBO(136,14,79, .9),
    900:Color.fromRGBO(136,14,79, 1),
  };

Color backgroundColor = Colors.amber[50];
class MyApp extends StatelessWidget {
  

  MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Items())
      ],
          child: MaterialApp(
        title: 'Wine App',
        theme: ThemeData(
          primarySwatch: colorCustom,
          accentColor: backgroundColor,
          fontFamily: 'JosefinSans'
        ),
        home: WineListScreen(),
        routes: {
          AddWineScreen.routeName: (ctx) => AddWineScreen()
        },
      ),
    );
  }
}

