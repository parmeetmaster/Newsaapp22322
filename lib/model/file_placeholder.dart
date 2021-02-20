// To parse this JSON data, do
//
//     final filePlaceholder = filePlaceholderFromJson(jsonString);

import 'dart:convert';

FilePlaceholder filePlaceholderFromJson(String str) => FilePlaceholder.fromJson(json.decode(str));

String filePlaceholderToJson(FilePlaceholder data) => json.encode(data.toJson());

class FilePlaceholder {
  FilePlaceholder({
    this.error,
    this.msg,
    this.success,
    this.link,
  });

  bool error;
  String msg;
  bool success;
  String link;

  factory FilePlaceholder.fromJson(Map<String, dynamic> json) => FilePlaceholder(
    error: json["error"],
    msg: json["msg"],
    success: json["success"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "msg": msg,
    "success": success,
    "link": link,
  };
}
