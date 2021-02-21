// To parse this JSON data, do
//
//     final uploadFileDetailModel = uploadFileDetailModelFromJson(jsonString);

import 'dart:convert';

UploadFileDetailModel uploadFileDetailModelFromJson(String str) => UploadFileDetailModel.fromJson(json.decode(str));

String uploadFileDetailModelToJson(UploadFileDetailModel data) => json.encode(data.toJson());

class UploadFileDetailModel {
  UploadFileDetailModel({
    this.post,
    this.attachments,
  });

  String post;
  List<String> attachments;

  factory UploadFileDetailModel.fromJson(Map<String, dynamic> json) => UploadFileDetailModel(
    post: json["post"],
    attachments: List<String>.from(json["attachments"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "post": post,
    "attachments": List<dynamic>.from(attachments.map((x) => x)),
  };
}
