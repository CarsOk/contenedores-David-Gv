import 'package:flutter/material.dart';

void main() {
  runApp(StarBlock());
}

class StarBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicacion movil',
      theme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: PaginaPrincipal(),
    );
  }
}

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
        body: Center(
            child: Column(
          children: [
            Text('Version 1.0.0 BETA',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                    color: Colors.black)),
            Text('Esta aplicacion se encuentra en desarrollo beta',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center),
            Icon(Icons.add_alert, size: 45.0, color: Colors.red)
          ],
        )));
  }
}
