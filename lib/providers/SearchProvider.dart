import 'package:flutter/material.dart';


class SearchScreenProvider extends ChangeNotifier {

  bool searchExpanded = true;
  List<String> listDepartments = [];
   String fromDate="";
   String toDate="";
   TextEditingController searchinputController=new TextEditingController();
   String department="Set Department";
   String office="Set Office";

  setExpansion(bool val) {
    searchExpanded = val;
    notifyListeners();
  }

  setDepartemnt(String val) {
    department=val;
   notifyListeners();
  }

  set(String val) {
    print(val);
  }


  List<String>getListOfDepartments() {
    return ["Bollywood","Hollywood","Usa"];
  }

  List<String>getListOfOffice() {
    return ["Office A","Office B","Office C"];
  }

  setFromDate(String val){
     fromDate=val;
     print(val);
  }

  setToDate(String val){
    toDate=val;
    print(val);
  }

  setDepartment(String val){
    department=val;
    notifyListeners();

  }
  setOffice(String val){
    office=val;
    notifyListeners();
  }

  onSubmit(){


  }


}