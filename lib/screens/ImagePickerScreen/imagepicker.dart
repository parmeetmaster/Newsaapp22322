


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:model_architecture/providers/LoginProvider.dart';
import 'package:provider/provider.dart';

class ImageDemoScreen extends StatefulWidget {
  @override
  _ImageDemoScreenState createState() => _ImageDemoScreenState();
}

class _ImageDemoScreenState extends State<ImageDemoScreen> {
  @override
  Widget build(BuildContext context) {
  final provider=Provider.of<LoginProvider>(context);

    return Scaffold(
      appBar: AppBar(),

      body:Container()

      ,);
  }
}
