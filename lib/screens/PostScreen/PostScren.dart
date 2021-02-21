

import 'package:flutter/material.dart';
import 'package:model_architecture/model/postcarrier.dart';
import 'package:model_architecture/utils/Utf8convertUtils.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();


}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    final PostCarrier args = ModalRoute.of(context).settings.arguments;


    return Scaffold(
        appBar:AppBar(),
         body:Container(
           child:    SingleChildScrollView(
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               ClipRRect(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                 child: Image.network(args.attachmentmodel.post,
                   fit: BoxFit.cover,
                 ),
               ),

               Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical:10),
               child:Text("${UtfConvertUtils().convert(args.model.cypherTitle)}",style:TextStyle(color: Colors.black,fontSize: 30)),
               ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical:10),
                   child:Text("${UtfConvertUtils().convert(args.model.cypherDescription)} ",
                       style:TextStyle(color: Colors.black,fontSize: 18)),
                 )

             ],),

           ),

         )

    );
  }
}
