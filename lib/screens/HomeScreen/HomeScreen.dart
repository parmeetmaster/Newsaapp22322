import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:model_architecture/constantPackage/constColors.dart';
import 'package:model_architecture/constantPackage/language/languageEn.dart';
import 'package:model_architecture/constantPackage/language/words.dart';
import 'package:model_architecture/providers/SampleProvider.dart';
import 'package:model_architecture/screens/HomeScreen/Components/CatagoryButton.dart';
import 'package:model_architecture/screens/SearchScreen/SearchScreen.dart';
import 'package:model_architecture/utils/Globals.dart';
import 'package:model_architecture/utils/languageDeligate.dart';
import 'package:provider/provider.dart';

import 'Components/CornerImages.dart';
import 'Components/PostContainer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:AppBar(
           actions: [InkWell(child: Icon(Icons.search),
             onTap:(){ Navigator.pushNamed(context,SearchScreen.screenname);},
           ),SizedBox(width: 14,)],
           leading: Icon(Icons.menu),
         title: Text("TOP 10 NEWS"),
         ),
        body:SingleChildScrollView(
        child:  PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",)),

    );
  }
}