


import 'package:flutter/material.dart';

class PostCreateScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add new post"),),
      body:Column(
        children: [
          TextField(),
        TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: null
        )
        ],

      ),
    );
  }
}
