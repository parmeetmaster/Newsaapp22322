import 'package:flutter/material.dart';
import 'package:model_architecture/Globals/Widgets/drawer.dart';
import 'package:model_architecture/providers/PostCreateProvider.dart';
import 'package:model_architecture/providers/PostProvider.dart';
import 'package:provider/provider.dart';

import 'Components/AddMore.dart';

class PostCreateScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GlobalDrawer(),
      appBar: AppBar(title: Text("Add new post"),),
      body: Consumer<PostCreateProvider>(
          builder: (context, value, child) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Choose Type of Post", style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),)),
                    SizedBox(height: 25,),
                    Row(children: [
                      Flexible(
                    fit: FlexFit.tight,
                    flex:4,
                      child: RadioListTile(
                      groupValue: value.radioItem,
                      title: Text('General',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      value: 'General',
                      onChanged:value.setDepartment,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex:5,
                    child: RadioListTile(
                      groupValue: value.radioItem,
                      title: Text('Departmental',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      value: 'Departmental',
                      onChanged:value.setDepartment,
                    ),
                  ),
                ],),
                    SizedBox(height: 25,),
                    TextField(decoration: InputDecoration(labelText: 'Title')),
                    SizedBox(height: 25,),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Description'),
                        controller: value.description_controller,
                        keyboardType: TextInputType.multiline,
                        maxLines: null
                    ),
                    SizedBox(height: 25,),
                    Wrap(
                      direction: Axis.vertical,
                      children: [
                        Addmore(),
                      ],
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width*0.88,
                      child: RaisedButton(child: Text("Submit",style: TextStyle(color: Colors.white),),
                      color: Theme.of(context).accentColor,
                      onPressed: (){},
                      ),
                    )
                  ],

                ),
              ),
            );
          }
      ),
    );
  }
}
