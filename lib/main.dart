import 'package:flutter/material.dart';
import 'Pages/PaginaPrincipal.dart';

void main() => runApp(StarBlock());

class StarBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicacion movil',
      theme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: PaginaPrincipal(),
    );
  }
}
