import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:starblock/Icons/my_news_icons.dart';
import 'package:starblock/models/Comment_fake_model.dart';

class Contactos extends StatelessWidget {
  const Contactos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Contactos',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
      ),
      body: Container(
          decoration: new BoxDecoration(color: Colors.red[400]),
          child: FutureBuilder<List<Comments>>(
            future: obtenerCommentsFake(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Comments>> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                List<Comments> comentariosFake = snapshot.data;

                return listaFakeComentarios(comentariosFake);
              }
              return Center(child: CircularProgressIndicator());
            },
          )),
    );
  }

  ListView listaFakeComentarios(List<Comments> comentariosFake) {
    return ListView.builder(
        itemCount: comentariosFake.length,
        itemBuilder: (BuildContext context, int index) {
          Comments comments = comentariosFake[index];
          return Column(
            children: [
              ListTile(
                  title: Text(comments.nombre,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  leading: Icon(MyNewsIcons.user, color: Colors.white),
                  subtitle: Text(
                    comments.estado,
                    style: TextStyle(
                        color: Colors.greenAccent[400],
                        fontStyle: FontStyle.italic),
                  )),
              Divider(color: Colors.white),
            ],
          );
        });
  }

  Future<List<Comments>> obtenerCommentsFake() async {
    final url = Uri.parse(
        'https://raw.githubusercontent.com/David-Gv/pruebaFake/main/datos.json');
    final respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      return commentsFromJson(respuesta.body);
    } else {
      return null;
    }
  }
}
