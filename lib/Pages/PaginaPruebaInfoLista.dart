import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:starblock/Icons/my_news_icons.dart';
import 'package:starblock/models/Comment_model.dart';

class CommentPrueba extends StatelessWidget {
  final Comment comment;

  CommentPrueba(this.comment);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () async {
                final respuesta = await borrarComentario(comment.id);
                if (respuesta) {
                  print("Borrado Correctamente");
                  Navigator.pop(context);
                } else {
                  print("No Borrado");
                }
              })
        ],
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

  Future<bool> borrarComentario(int id) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/comments/$id');
    final respuesta = await http.delete(url);
    print('Response status: ${respuesta.statusCode}');
    print('Response body: ${respuesta.body}');
    if (respuesta.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
