import 'package:flutter/material.dart';
import 'package:starblock/Pages/PaginaConsumirApi.dart';
import 'package:starblock/Pages/PaginaContactos.dart';
import 'package:starblock/Pages/PaginaPostApi.dart';

import 'package:starblock/Icons/my_news_icons.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
          accountName: Text('David Garcia'),
          accountEmail: Text('Davidgarcia@starblock.com'),
          decoration: BoxDecoration(color: Colors.deepOrange[200]),
          currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black45,
              child: Text('DG', style: TextStyle(fontSize: 30.0)))),
      ListTile(
          title: Text('Contactos'),
          leading: Icon(MyNewsIcons.users),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Contactos()));
          }),
      Ink(
        color: Colors.orange,
        child: (ListTile(
            title: Text('API'),
            leading: Icon(MyNewsIcons.database),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ConsumirApi()));
            })),
      ),
      ListTile(
          title: Text('EnviarAPI'),
          leading: Icon(MyNewsIcons.cloud),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PostApi()));
          }),
    ]));
  }
}
