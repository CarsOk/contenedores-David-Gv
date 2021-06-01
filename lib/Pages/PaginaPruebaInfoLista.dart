import 'package:flutter/material.dart';
import 'package:starblock/Icons/my_news_icons.dart';

import 'package:starblock/models/Comment_model.dart';

class CommentPrueba extends StatelessWidget {
  final Comment comment;

  CommentPrueba(this.comment);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Mi informacion',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Nombre',
              style: TextStyle(
                  color: Colors.red[800], fontWeight: FontWeight.w400),
            ),
            leading: Icon(MyNewsIcons.user, color: Colors.black),
            subtitle: Text(
              comment.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Descripcion',
              style: TextStyle(
                  color: Colors.red[800], fontWeight: FontWeight.w400),
            ),
            leading: Icon(Icons.note_add, color: Colors.black),
            subtitle: Text(
              comment.body,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Correo electronico',
              style: TextStyle(
                  color: Colors.red[800], fontWeight: FontWeight.w400),
            ),
            leading: Icon(Icons.email, color: Colors.black),
            subtitle: Text(
              comment.email,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Id del mensaje',
              style: TextStyle(
                  color: Colors.red[800], fontWeight: FontWeight.w400),
            ),
            leading: Icon(MyNewsIcons.address_book, color: Colors.black),
            subtitle: Text(
              comment.id.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
