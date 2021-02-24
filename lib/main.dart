import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route_annotations.dart';
import 'package:charset_converter/charset_converter.dart';
import 'package:convert/convert.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package_plugin1/flutter_package_plugin1.dart';
import 'package:model_architecture/api/Api.dart';
import 'package:model_architecture/constantPackage/language/languageEn.dart';
import 'package:model_architecture/providers/HomeProvider.dart';
import 'package:model_architecture/providers/LoginProvider.dart';
import 'package:model_architecture/providers/PostProvider.dart';
import 'package:model_architecture/providers/SampleProvider.dart';
import 'package:model_architecture/screens/ImagePickerScreen/imagepicker.dart';
import 'package:model_architecture/screens/signup.dart';
import 'file:///D:/Practice%20folder/News%20App/lib/Globals/Globals.dart';
import 'file:///D:/git%20main/flutter-modules/model_architecture/lib/api/api_service.dart';
import 'package:model_architecture/utils/languageDeligate.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

import 'model/signin_model.dart';
import 'providers/PostCreateProvider.dart';
import 'providers/SearchProvider.dart';
import 'providers/SignInProvider.dart';
import 'screens/HomeScreen/HomeScreen.dart';
import 'screens/Login/login.dart';
import 'screens/PostCreateScreen/PostCreateScreen.dart';
import 'screens/PostScreen/PostScren.dart';
import 'screens/SearchScreen/SearchScreen.dart';
import 'screens/UploadSuccess/SucessScreen.dart';
import 'screens/SignInScreen/signin.dart';
import 'screens/splashscreen.dart';
import 'utils/preference.dart';

// need to add async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preference.load();
  try{

  }catch(e){
    print("SharedPreferences not work");
  }



/*
  await checkUserIsSignedIn();*/
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => SampleProvider()),
        ChangeNotifierProvider(create: (ctx) => PostProvider()),
        ChangeNotifierProvider(create: (ctx) => PostCreateProvider()),
        ChangeNotifierProvider(create: (ctx) => LoginProvider()),
        ChangeNotifierProvider(create: (ctx) => SearchScreenProvider()),
        ChangeNotifierProvider(create: (ctx) => SignInProvider()),
        ChangeNotifierProvider(create: (ctx) => HomeProvider()),
      ],
      child: MyApp(),
    ),
  );
}

checkUserIsSignedIn() async {
  try {
    String cacheData = await Preference.getString("login_credentials");
    if (cacheData != null) {
      List<SignInModel> list = signInModelFromJson(cacheData);
      Globals.signInModel = list[0];
    }
  } catch (e) {

  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/SplashScreen',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/SearchScreen': (context) => SearchScreen(),
        UploadSuccess.classname: (context) => UploadSuccess(),
        '/post': (context) => PostScreen(),
        '/PostCreateScreen': (context) => PostCreateScreen(),
        '/SignInPage': (context) => SignInPage(),
        '/SignUpScreen': (context) => SignUpScreen(),
        '/SignUpScreen': (context) => SignUpScreen(),

        '/SplashScreen': (context) => SplashScreen()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
/////////////////

class CustomFilePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomFilePicker();
  }
}

class _CustomFilePicker extends State<CustomFilePicker> {
  File selectedfile;
  Response response;
  String progress;
  Dio dio = new Dio();

  selectFile() async {
    FilePickerResult result = await FilePicker.platform.pickFiles();

    if (result != null) {
      selectedfile = File(result.files.single.path);
      uploadFile();
    } else {
      // User canceled the picker
    }

    setState(() {}); //update the UI so that file name is shown
  }

  uploadFile() async {
    String uploadurl = "https://news.inrexa.com/fileup.php";
    //dont use http://localhost , because emulator don't get that address
    //insted use your local IP address or use live URL
    //hit "ipconfig" in windows or "ip a" in linux to get you local IP

    FormData formdata = FormData.fromMap({
      "file": await MultipartFile.fromFile(selectedfile.path,
          filename: basename(selectedfile.path)
          //show only filename from path
          ),
    });

    response = await dio.post(
      uploadurl,
      data: formdata,
      onSendProgress: (int sent, int total) {
        String percentage = (sent / total * 100).toStringAsFixed(2);
        setState(() {
          progress = "$sent" +
              " Bytes of " "$total Bytes - " +
              percentage +
              " % uploaded";
          //update the progress
        });
      },
    );

    if (response.statusCode == 200) {
      print(response.toString());
      //print response from server
    } else {
      print("Error during connection to server.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Select File and Upload"),
          backgroundColor: Colors.orangeAccent,
        ), //set appbar
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(40),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  //show file name here
                  child: progress == null
                      ? Text("Progress: 0%")
                      : Text(
                          basename("Progress: $progress"),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                  //show progress status here
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  //show file name here
                  child: selectedfile == null
                      ? Text("Choose File")
                      : Text(basename(selectedfile.path)),
                  //basename is from path package, to get filename from path
                  //check if file is selected, if yes then show file name
                ),

                Container(
                    child: RaisedButton.icon(
                  onPressed: () {
                    selectFile();
                  },
                  icon: Icon(Icons.folder_open),
                  label: Text("CHOOSE FILE"),
                  color: Colors.redAccent,
                  colorBrightness: Brightness.dark,
                )),

                //if selectedfile is null then show empty container
                //if file is selected then show upload button
                selectedfile == null
                    ? Container()
                    : Container(
                        child: RaisedButton.icon(
                        onPressed: () {
                          uploadFile();
                        },
                        icon: Icon(Icons.folder_open),
                        label: Text("UPLOAD FILE"),
                        color: Colors.redAccent,
                        colorBrightness: Brightness.dark,
                      ))
              ],
            )));
  }
}
