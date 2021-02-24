// To parse this JSON data, do
//
//     final signInModel = signInModelFromJson(jsonString);

import 'dart:convert';

List<SignInModel> signInModelFromJson(String str) => List<SignInModel>.from(json.decode(str).map((x) => SignInModel.fromJson(x)));

String signInModelToJson(List<SignInModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SignInModel {
  SignInModel({
    this.sno,
    this.name,
    this.email,
    this.password,
    this.authlvl,
  });

  String sno;
  String name;
  String email;
  String password;
  String authlvl;

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
    sno: json["sno"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    authlvl: json["authlvl"],
  );

  Map<String, dynamic> toJson() => {
    "sno": sno,
    "name": name,
    "email": email,
    "password": password,
    "authlvl": authlvl,
  };
}
