import 'package:flutter/material.dart';

class AddWineScreen extends StatelessWidget {
  static const routeName = '/addWine';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new Wine'),
      ),
      backgroundColor: Theme.of(context).accentColor,
    );
  }
}