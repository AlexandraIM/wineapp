import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          DrawerHeader(
            child: UserAccountsDrawerHeader(
                currentAccountPicture: Icon(Icons.person, size: 40.0,),
                accountName: Text('Iurii'),
                accountEmail: Text('iurii@gmail.com')),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            title: Text('Search'),
          ),
          ListTile(
            title: Text('Log Out'),
            trailing: Icon(Icons.exit_to_app),
          )
        ],
      ),
    );
  }
}
