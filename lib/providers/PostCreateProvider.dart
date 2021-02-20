

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:model_architecture/api/Api.dart';
import 'package:model_architecture/api/api_service.dart';
import 'package:model_architecture/constantPackage/constStrings.dart';
import 'package:model_architecture/model/file_placeholder.dart';
import 'package:model_architecture/screens/PostCreateScreen/Components/AddMore.dart';
import 'package:model_architecture/screens/PostCreateScreen/Components/Added.dart';
import 'package:path/path.dart';

class PostCreateProvider extends ChangeNotifier{
  TextEditingController title_controller=new TextEditingController();
  TextEditingController description_controller=new TextEditingController();

  String radioItem="General";
    double percent=0;


  File selectedfile;
  Response response;
  String progress;
  List<Widget> filesWidgets=[Addmore()];
  List<String> filelocation=[];

  pickupFile() async {

    FilePickerResult result = await FilePicker.platform.pickFiles();

    if(result != null) {
      selectedfile = await File(result.files.single.path);
     await uploadFile();
    } else {
      // User canceled the picker
    }


  }
  Dio dio = ApiService().getclient();

  uploadFile() async {
    String uploadurl = "/fileup.php";
    //dont use http://localhost , because emulator don't get that address
    //insted use your local IP address or use live URL
    //hit "ipconfig" in windows or "ip a" in linux to get you local IP

    FormData formdata = FormData.fromMap({
      "file": await MultipartFile.fromFile(
          selectedfile.path,
          filename: basename(selectedfile.path)
        //show only filename from path
      ),
    });

    response = await dio.post(uploadurl,
      data: formdata,
      onSendProgress: (int sent, int total) {
        String percentage = (sent/total*100).toStringAsFixed(2);
       percent=(sent/total*100)/100;
        print(percentage);
       double percentdouble= double.parse(percentage);

        notifyListeners();
        },);


    if(response.statusCode == 200){
      FilePlaceholder obj=new FilePlaceholder.fromJson(response.data);
      if(obj.error==false){


      }
      print(obj.link);

        filesWidgets.insert(0, Added());
      notifyListeners();
      //print response from server
    }else{
      print("Error during connection to server.");
    }
  }

     uploadPost() async {

  Response resp= await Api().uploadGeneralPost(title_controller.text, description_controller.text,["asd","nrrnoc0"],"2");

}









  setDepartment(String val){
    radioItem=val;
    notifyListeners();
  }


}
