// To parse this JSON data, do
//
//     final commentTwo = commentTwoFromJson(jsonString);

import 'dart:convert';

CommentTwo commentTwoFromJson(String str) =>
    CommentTwo.fromJson(json.decode(str));

String commentTwoToJson(CommentTwo data) => json.encode(data.toJson());

class CommentTwo {
  CommentTwo({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  String postId;
  String id;
  String name;
  String email;
  String body;

  factory CommentTwo.fromJson(Map<String, dynamic> json) => CommentTwo(
        postId: json["postId"],
        id: json["id"].toString(),
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
