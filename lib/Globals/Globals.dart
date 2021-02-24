import 'package:flutter/material.dart';
import 'package:model_architecture/constantPackage/language/words.dart';
import 'package:model_architecture/model/signin_model.dart';

import '../utils/languageDeligate.dart';

class Globals{
  static Words primaryLanguage;
  static const apikey = "";
  static String imageUrl = "";
  // preference keys constants
  static String SESSION_ID = "session_id";
  static  String TOKEN = "token";
  static  String USER = "user";
  static String VOUCHER_PREFIX = "dd_voucher_";
  static final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  static SignInModel signInModel;
}

const String SIGNUP_TOKEN="SIGNUP_TOKEN";