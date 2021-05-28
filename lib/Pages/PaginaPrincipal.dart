import 'package:flutter/material.dart';
import 'package:starblock/Widgets/Drawer.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('StarBlock',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
      ),
      drawer: MenuDrawer(),
      body: Container(
        decoration: new BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.yellowAccent[400],
          Colors.amber[200],
          Colors.orange,
          Colors.red,
        ], stops: [
          0.3,
          0.5,
          0.7,
          0.9,
        ], begin: FractionalOffset.bottomRight, end: FractionalOffset.topLeft)),
        child: ListView(
          children: [
            Text('Version 2.0.0 BETA',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                    color: Colors.white),
                textAlign: TextAlign.center),
            Image.asset(
              'assets/LogoSB.png',
              width: 250.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/Facebook.png', width: 45.0),
              SizedBox(width: 25.0),
              Image.asset('assets/Instagram.png', width: 47.0),
              SizedBox(width: 25.0),
              Image.asset('assets/WhatsApp.png', width: 47.0)
            ])
          ],
        ),
      ),
    );
  }
}
