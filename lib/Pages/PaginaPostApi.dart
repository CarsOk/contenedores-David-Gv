import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:starblock/Pages/PaginaCommentSaved.dart';
import 'package:starblock/models/Comment_postApi_model.dart';

class PostApi extends StatelessWidget {
  final commentTwo = new CommentTwo(id: '1');

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text('Formulario',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: ListView(
            children: [
              Text('Por favor diligenciar el formulario con sus datos',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                      color: Colors.red),
                  textAlign: TextAlign.center),
              TextField(
                  decoration: InputDecoration(labelText: 'PostId'),
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  onChanged: (valor) => commentTwo.postId = valor),
              TextField(
                  decoration: InputDecoration(labelText: 'Name'),
                  textCapitalization: TextCapitalization.words,
                  autofocus: true,
                  onChanged: (valor) => commentTwo.name = valor),
              TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  onChanged: (valor) => commentTwo.email = valor),
              TextField(
                  decoration: InputDecoration(labelText: 'Body'),
                  maxLines: 3,
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.multiline,
                  autofocus: true,
                  onChanged: (valor) => commentTwo.body = valor),
              ElevatedButton(
                  onPressed: () async {
                    CommentTwo comentario =
                        await registrar(commentTwo.toJson());
                    if (comentario != null) {
                      print('Informacion Guardada');
                      final snackBar =
                          SnackBar(content: Text('Informacion Guardada'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommentSaved(
                                  comentario,
                                )),
                      );
                    } else {
                      print('Informacion No Guardada (ERROR)');
                      final snackBar = SnackBar(content: Text('ERROR 5001'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text('Guardar')),
            ],
          ),
        ));
  }

  Future<CommentTwo> registrar(Map<String, dynamic> json) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    final respuesta = await http.post(url, body: json);
    print('Response status: ${respuesta.statusCode}');
    print('Response body: ${respuesta.body}');

    if (respuesta.statusCode == 201) {
      return commentTwoFromJson(respuesta.body);
    } else {
      return null;
    }
  }
}
