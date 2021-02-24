import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_architecture/Globals/Globals.dart';
import 'package:model_architecture/api/Api.dart';
import 'package:model_architecture/model/signin_model.dart';
import 'package:model_architecture/screens/HomeScreen/HomeScreen.dart';
import 'package:model_architecture/utils/preference.dart';

class SignInProvider extends ChangeNotifier {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  Function(SignInModel model) onsuccessNavigateHome;
  BuildContext context;
  performSignIn() async {
    print(emailController.text);


    try{
      Response response =
      await Api().login(email: emailController.text, password: passwordController.text);

      List<SignInModel> list = signInModelFromJson(response.data);
      SignInModel model = list[0];

      Preference.setString("login_credentials",response.data);
      onsuccessNavigateHome(model);
    }catch(e){

      print(e.toString());
      scaffoldkey.currentState.showSnackBar(SnackBar(content: Text('Login Failed')));

    }

  }

  void setContext(BuildContext context) {
    context=context;
  }

  setOnsuccessSignIn(Function(SignInModel model) m_onsuccessNavigateHome) {
    onsuccessNavigateHome=m_onsuccessNavigateHome;
  }


}
