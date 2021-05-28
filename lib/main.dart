import 'package:flutter/material.dart';

import 'Pages/PaginaPrincipal.dart';

void main() => runApp(StarBlock());

class StarBlock extends StatelessWidget {
  const StarBlock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MI APLICACION',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: PaginaPrincipal(),
    );
  }
}
