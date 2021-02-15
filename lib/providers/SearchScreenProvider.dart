import 'package:flutter/material.dart';



class SearchScreenProvider extends ChangeNotifier{

  bool searchExpanded=true;

setExpansion(bool val){
     searchExpanded=val;
     notifyListeners();
}

setDepartemnt(String val){
  print(val);

}

set(String val){
  print(val);

}



}