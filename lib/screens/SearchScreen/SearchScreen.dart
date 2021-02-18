import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:model_architecture/constantPackage/constColors.dart';
import 'package:model_architecture/constantPackage/language/words.dart';
import 'package:model_architecture/providers/SearchProvider.dart';
import 'package:model_architecture/screens/HomeScreen/Components/PostContainer.dart';
import 'package:model_architecture/utils/languageDeligate.dart';
import 'package:provider/provider.dart';





class SearchScreen extends StatefulWidget {
  static const String screenname='/SearchScreen';



  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
  TextEditingController _controller1;
  TextEditingController _controller2;
  TextEditingController _controller3;
  TextEditingController _controller4;
  //String _initialValue;
  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';
  String _valueChanged2 = '';
  String _valueToValidate2 = '';
  String _valueSaved2 = '';
  String _valueChanged3 = '';
  String _valueToValidate3 = '';
  String _valueSaved3 = '';
  String _valueChanged4 = '';
  String _valueToValidate4 = '';
  String _valueSaved4 = '';

  Words lang;

  @override
  void initState() {
  lang=getPrimaryLanguage();
    _controller1 = TextEditingController();

    super.initState();

    //_initialValue = DateTime.now().toString();


  }
  /// This implementation is just to simulate a load data behavior
  /// from a data base sqlite or from a API


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),

       body:SingleChildScrollView(child: Column(
    children: [
      PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "2ग्रेटा थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "3ग्रेटा थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग4्रेटा थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग5्रेटा थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्6666रेटा थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थ667777नबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा 12312थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग24124231241 टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट के123स : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट केस 123: 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट केस : 12335 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट केस : 5 दि12न के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा23123 थनबर्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर13122्ग टूलकिट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग टूलक3िट केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट21123 केस : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट केस123 : 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),
      PostContainer(heading: "ग्रेटा थनबर्ग टूलकिट केस :123 5 दिन के पुलिस रिमांड में दिशा, पुलिस बोली- खालिस्तानी ग्रुप जिंदा करने की थी साजिश",description: "नई दिल्ली: ग्रेटा थनबर्ग टूलकिट मामले में बेंगलुरु से गिरफ्तार की गईं क्लाइमेट एक्टिविस्ट दिशा रवि को दिल्ली पुलिस ने रविवार को दिल्ली के पटियाला हाउस कोर्ट में पेश किया गया है, जहां पर पुलिस को दिशा की पांच दिनों की रिमांड मिली है. हालांकि, जानकारी है कि पुलिस ने कोर्ट से सात दिनों की रिमांड मांगी थी.",),

    ],
    )));

  }

  String _dropDownValue;
  _getAppBar(){
    return PreferredSize(
      preferredSize: Size.fromHeight(320),
      child: Consumer<SearchScreenProvider>(
          builder: (context, value,child) {
          return value.searchExpanded ? Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(20),bottomRight:  Radius.circular(20))
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 45,),
                 Align(
                     alignment: Alignment.centerLeft,
                     child: Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: Text(lang.find_news_here,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                     )),
                 Padding(
                   padding: EdgeInsets.all(5),
                   child: TextField(
                     controller: value.searchinputController,
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.only(top:5,bottom:5),
                        prefixIcon: Icon(Icons.search),
                        focusedBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: searchboxgrey, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: new OutlineInputBorder(
                          borderSide: const BorderSide(color: searchboxgrey, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "Type in your text",
                        fillColor: searchboxgrey),
                   ),
                 ),
               Container(
               width: MediaQuery.of(context).size.width*0.94,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                     width:MediaQuery.of(context).size.width*0.88,
                       child: DropdownButton(
                         hint: _dropDownValue == null
                             ? Text('${value.department}')
                             : Text(
                           _dropDownValue,
                           style: TextStyle(color: Colors.blue),
                         ),
                         isExpanded: true,
                         iconSize: 30.0,
                         style: TextStyle(color: Colors.blue),
                         items: value.getListOfDepartments().map(
                               (val) {
                             return DropdownMenuItem<String>(
                               value: val,
                               child: Text(val),
                             );
                           },
                         ).toList(),
                         onChanged:value.setDepartemnt,
                       ),
                     ),
                     SizedBox(
                         height:30,
                         width: 20,child:   Center(
                           child: VerticalDivider(
                       color: Colors.black,

                     ),
                         )),
                    /* Container(
                       width:MediaQuery.of(context).size.width*0.88/2,
                       child: DropdownButton(
                         hint: _dropDownValue == null
                             ? Text('${value.office}')
                             : Text(
                           _dropDownValue,
                           style: TextStyle(color: Colors.blue),
                         ),
                         isExpanded: true,
                         iconSize: 30.0,
                         style: TextStyle(color: Colors.blue),
                         items:value.getListOfOffice().map(
                               (val) {
                             return DropdownMenuItem<String>(
                               value: val,
                               child: Text(val),
                             );
                           },
                         ).toList(),
                         onChanged:value.setOffice,
                       ),
                     )*/
                   ],
                 ),

               ),
                SizedBox(height: 5,),
                Container(
                  width: MediaQuery.of(context).size.width*0.94,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height:60,
                        width:MediaQuery.of(context).size.width*0.88/2,
                        child:             DateTimePicker(
                          type: DateTimePickerType.date,
                          dateMask: 'dd-MM-yyyy',
                          controller: _controller1,
                          //initialValue: _initialValue,
                          firstDate: DateTime(2018),
                          lastDate: DateTime(2022),

                          dateLabelText: 'From Date',
                          timeLabelText: "Hour",
                          //use24HourFormat: false,
                          //locale: Locale('pt', 'BR'),
                          selectableDayPredicate: (date) {
                            /*if (date.weekday == 6 || date.weekday == 7) {
                      return false;
                    }*/
                            return true;
                          },
                          onChanged:value.setFromDate,
                          validator: (val){
                            print("validator${val}")
                            ;
                          },
                          onSaved: (val){
                            print("onSaved${val}")
                            ;
                          },
                        ),
                      ),
                      Center(
                        child: SizedBox(
                            height:30,
                            width: 20,child:   VerticalDivider(
                          color: Colors.black,

                        )),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width*0.88/2,
                        height: 60,
                        child:  DateTimePicker(
                          type: DateTimePickerType.date,
                          dateMask: 'dd-MM-yyyy',
                          controller: _controller1,
                          //initialValue: _initialValue,
                          firstDate: DateTime(2018),
                          lastDate: DateTime(2022),

                          dateLabelText: 'To Date',
                          timeLabelText: "Hour",
                          //use24HourFormat: false,
                          //locale: Locale('pt', 'BR'),
                          selectableDayPredicate: (date) {
                            /*if (date.weekday == 6 || date.weekday == 7) {
                      return false;
                    }*/
                            return true;
                          },
                          onChanged:value.setToDate,
                          validator: (val){
                            print("validator${val}")
                            ;
                          },
                          onSaved: (val){
                            print("onSaved${val}")
                            ;
                          },
                        ),
                      )
                    ],
                  ),

                ),
               SizedBox(height: 20,),
                Container(
                  height:50,
                  width: MediaQuery.of(context).size.width*0.80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: RaisedButton(
                      color: Colors.blue,
                      onPressed: value.onSubmit,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search,color:Colors.white),
                          Text("Search",style:TextStyle(color: Colors.white)),
                        ],
                      )
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    value.setExpansion(false);

                  },
                    child: Icon(Icons.arrow_drop_up,size: 30,))
              ],
            ),
          ):
          Container(height: 108,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(20),bottomRight:  Radius.circular(20)),
            ),
              child:Column(children: [
                Row(children: [Padding(
                  padding: const EdgeInsets.only(left: 15,top:50),
                  child: Text(lang.find_news_here,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top:50,right:25),
                    child: InkWell(
                        onTap:  (){value.setExpansion(true);},
                        child: Icon(Icons.search)),
                  )
                ],),
                InkWell(
                  onTap: (){value.setExpansion(true);},
                    child: Container(
                        width:80,
                        child: Icon(Icons.arrow_drop_down)))
              ],)
          );
        }
      ),
    );

  }


}








