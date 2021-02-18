


import 'package:flutter/material.dart';


class Addmore extends StatefulWidget {
  @override
  _AddmoreState createState() => _AddmoreState();
}

class _AddmoreState extends State<Addmore> {
  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.grey[300]
    ,height:70,width:70,
      child:Center(child: Text("+"))
    );
  }
}
