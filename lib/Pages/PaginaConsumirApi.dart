import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:starblock/Pages/PaginaPostApi.dart';
import 'package:starblock/models/Comment_model.dart';

class ConsumirApi extends StatelessWidget {
  const ConsumirApi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: new Text('Consumir API',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center)),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => PostApi()));
        },
      ),
      body: FutureBuilder<List<Comment>>(
          future: obtenerInfoComments(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Comment>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              List<Comment> comentarios = snapshot.data;

              return construirListaComentarios(comentarios);
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }

  ListView construirListaComentarios(List<Comment> comentarios) {
    return ListView.builder(
        itemCount: comentarios.length,
        itemBuilder: (BuildContext context, int index) {
          Comment comment = comentarios[index];
          return Column(
            children: [
              ListTile(
                title: Text(comment.email),
                leading: Icon(Icons.email, color: Colors.black),
                subtitle: Text(comment.id.toString()),
              ),
              Divider(),
            ],
          );
        });
  }

  Future<List<Comment>> obtenerInfoComments() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    final respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      return commentFromJson(respuesta.body);
    } else {
      return null;
    }
  }
}
