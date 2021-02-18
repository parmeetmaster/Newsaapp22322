import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:model_architecture/api/api_service.dart';
import 'package:model_architecture/constantPackage/constStrings.dart';

class Api{

/*  Dio dio=ApiService(baseOptions:  BaseOptions(
    baseUrl: "https://news.inrexa.com",
    connectTimeout: 10000,
    receiveTimeout: 10000,)).getclient();*/
  Dio dio= ApiService().getclient();
Future<Response>  requestSamplePost(String name,String email,String password,String authlvl) async{


  var formData= FormData.fromMap({
      "name": "wendux",
      "email":"asndk@gmail.com",
      "password":"asndk@gmail.com",
      "authlvl": 2,
       "authcode": authcode,

    });


   return dio.post("/signup.php",data:await formData);
  }

  Future<Response>  uploadGeneralPost(String title,String description,dynamic attachment,String authlvl) async{
    var encoded = utf8.encode(description);
    var decoded = utf8.decode(encoded);
    print(decoded);
    var formData= FormData.fromMap({
      "title": title,
      "description":encoded.toString(),
      "attachments": jsonEncode(attachment),

      "authcode": authcode,

    });


    return dio.post("/uploadgeneral.php",data:await formData);
  }

  

}