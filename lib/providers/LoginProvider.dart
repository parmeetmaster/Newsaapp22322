import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:model_architecture/model/appeals_model.dart';
import 'package:model_architecture/model/credential_authentication_model.dart';
import '../model/UploadImageAndProcessModel.dart';

class LoginProvider extends ChangeNotifier {
  File imageFile;
  final picker = ImagePicker();
  String message = "";
  CredentialAuthanticationModel loginobj;
  BuildContext _context;

  setBuildContext(BuildContext context){
    this._context=context;
  }

  Future performSignUp() async {
    Dio dio = await getApiClient();
    Map<String, dynamic> body = {
      'name': 'doodle',
      'email': 'blue',
      'password': 'password',
      'authlvl': 2,
      'authcode': "as5vc5f32655d2f",
    };
    Response resp = await dio.post("", data: FormData.fromMap(body));
    print("response is ${resp.toString()}");
  }

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  Future performSignIn() async {
    Dio dio = await getApiClient();
    Map<String, dynamic> body = {
      'email': email.text,
      'password': password.text,
    };
    try{
    Response resp = await dio.post("/login.php", data: FormData.fromMap(body));

      List<dynamic> d = json.decode(resp.data);

      if(d[0]!=null)
        loginobj=CredentialAuthanticationModel.fromJson(d[0]);

    }on RangeError catch(e){
      Fluttertoast.showToast(msg: "User not Found");
    }on DioError catch(e){
      Fluttertoast.showToast(msg: "Internet not found");
    }

  }

  Future<Dio> getApiClient() async {
    Dio _dio = new Dio();
    _dio.interceptors.clear();
    _dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options) {
          return options;
        },
        onResponse: (Response response) {
          // Do something with response data
          return response; // continue
        },
        onError: (DioError error) async {}));
    _dio.options.baseUrl = 'https://news.inrexa.com';
    return _dio;
  }
}
