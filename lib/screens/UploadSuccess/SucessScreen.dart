

import 'package:flutter/material.dart';

class UploadSuccess extends StatefulWidget {
  static const classname="/UploadSuccess";
  @override
  _UploadSuccessState createState() => _UploadSuccessState();
}

class _UploadSuccessState extends State<UploadSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Center(child: Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.width*0.4,
          child: Image.asset('assets/check.png'),),),
          Center(child: Text("Post Upload \nSuccess",textAlign:TextAlign.center,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),))

      ],)

    );
  }
}
