

import 'package:flutter/material.dart';

class PostCreateProvider extends ChangeNotifier{

  TextEditingController description_controller=new TextEditingController();

  String radioItem="General";

  setDepartment(String val){
    radioItem=val;
    notifyListeners();
  }


}