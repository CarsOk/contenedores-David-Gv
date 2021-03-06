import 'package:flutter/material.dart';
import 'package:starblock/Icons/my_news_icons.dart';

import 'package:starblock/models/Comment_postApi_model.dart';

class CommentSaved extends StatelessWidget {
  final CommentTwo commentTwo;

  CommentSaved(this.commentTwo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Mi informacion',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Id del mensaje',
              style: TextStyle(
                  color: Colors.red[800], fontWeight: FontWeight.w400),
            ),
            leading: Icon(Icons.note_add, color: Colors.black),
            subtitle: Text(
              commentTwo.postId,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Nombre',
              style: TextStyle(
                  color: Colors.red[800], fontWeight: FontWeight.w400),
            ),
            leading: Icon(MyNewsIcons.user, color: Colors.black),
            subtitle: Text(
              commentTwo.name,
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
              commentTwo.email,
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
            leading: Icon(MyNewsIcons.attachment, color: Colors.black),
            subtitle: Text(
              commentTwo.body,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
