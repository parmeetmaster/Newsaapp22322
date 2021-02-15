import 'package:flutter/material.dart';

import 'CornerImages.dart';

class PostContainer extends StatelessWidget {

  String description;
  String imgurl;
  String heading;
  PostContainer({this.description,this.imgurl,this.heading});

  @override
  Widget build(BuildContext context) {
    description??="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
   imgurl??="https://images01.nicepage.io/page/85/79/wordpress-template-preview-85793.jpg";
   heading??="Heading";

   return Padding (
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top:10),
          width:MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
          color: Colors.grey[500],),),
          child:Column(
            children: [
              Padding(padding: EdgeInsets.all(8),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("$heading",style:TextStyle(fontWeight:FontWeight.w600,fontSize: 22),maxLines: 2, overflow: TextOverflow.ellipsis,)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(description,
                maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              RoundedCornerImages(imageurl: imgurl,),
            ],
          )
      ),
    )
    ;
  }
}
