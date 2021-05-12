import 'package:flutter/material.dart';

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
                      backgroundColor: Colors.grey,
                      child: Text(
                        'D',
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
          ],
        )));
  }
}
