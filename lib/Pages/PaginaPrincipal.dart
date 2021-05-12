import 'package:flutter/material.dart';
import 'package:flutter_github_programa/my_favorites_icons.dart';

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Starblock',
                  style:
                      TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400))),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text('David Garcia'),
                  accountEmail: Text('Davidgarcia@Starblock.co'),
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Text(
                        'DG',
                        style: TextStyle(fontSize: 30.0),
                      ))),
              ListTile(
                  title: Text('Opciones'),
                  leading: Icon(Icons.settings),
                  onTap: () {}),
              ListTile(
                  title: Text('Contactos'),
                  leading: Icon(Icons.contacts),
                  onTap: () {}),
            ],
          ),
        ),
        body: Center(
            child: Column(
          children: [
            Text('Version 1.0.0 BETA',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                    color: Colors.black)),
            Text('Esta aplicacion se encuentra en desarrollo beta',
                style: TextStyle(color: Colors.red, fontSize: 20.0),
                textAlign: TextAlign.center),
            Image.asset('imagen/LogoSB.png', width: 250.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('imagen/Facebook.png', width: 45.0),
                SizedBox(width: 25.0),
                Image.asset('imagen/Instagram.png', width: 47.0),
                SizedBox(width: 25.0),
                Icon(MyFavoritesIcons.telegram,
                    size: 45.0, color: Colors.blue[400])
              ],
            )
          ],
        )));
  }
}
