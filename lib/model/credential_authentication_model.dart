// To parse this JSON data, do
//
//     final credentialAuthanticationModel = credentialAuthanticationModelFromJson(jsonString);

import 'dart:convert';

List<CredentialAuthanticationModel> credentialAuthanticationModelFromJson(String str) => List<CredentialAuthanticationModel>.from(json.decode(str).map((x) => CredentialAuthanticationModel.fromJson(x)));

String credentialAuthanticationModelToJson(List<CredentialAuthanticationModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CredentialAuthanticationModel {
  CredentialAuthanticationModel({
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

  factory CredentialAuthanticationModel.fromJson(Map<String, dynamic> json) => CredentialAuthanticationModel(
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
