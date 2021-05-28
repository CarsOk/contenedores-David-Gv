// To parse this JSON data, do
//
//     final comments = commentsFromJson(jsonString);

import 'dart:convert';

List<Comments> commentsFromJson(String str) =>
    List<Comments>.from(json.decode(str).map((x) => Comments.fromJson(x)));

String commentsToJson(List<Comments> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Comments {
  Comments({
    this.postId,
    this.id,
    this.nombre,
    this.correo,
    this.estado,
  });

  int postId;
  int id;
  String nombre;
  String correo;
  String estado;

  factory Comments.fromJson(Map<String, dynamic> json) => Comments(
        postId: json["postId"],
        id: json["id"],
        nombre: json["nombre"],
        correo: json["correo"],
        estado: json["estado"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "nombre": nombre,
        "correo": correo,
        "estado": estado,
      };
}
