/// sno : "165"
/// title : "safsaf"
/// cypher_title : "sfsafsa"
/// description : "asfasf"
/// cypher_description : "asfasf"
/// attachments : "asfsaf"
/// date : "2021-02-20\n23:46:44"
/// department : "1"

class PostFromServer{
  String _sno;
  String _title;
  String _cypherTitle;
  String _description;
  String _cypherDescription;
  String _attachments;
  String _date;
  String _department;

  String get sno => _sno;
  String get title => _title;
  String get cypherTitle => _cypherTitle;
  String get description => _description;
  String get cypherDescription => _cypherDescription;
  String get attachments => _attachments;
  String get date => _date;
  String get department => _department;

  PostFromServeroo({
      String sno, 
      String title, 
      String cypherTitle, 
      String description, 
      String cypherDescription, 
      String attachments, 
      String date, 
      String department}){
    _sno = sno;
    _title = title;
    _cypherTitle = cypherTitle;
    _description = description;
    _cypherDescription = cypherDescription;
    _attachments = attachments;
    _date = date;
    _department = department;
}

  PostFromServer.fromJson(dynamic json) {
    _sno = json["sno"];
    _title = json["title"];
    _cypherTitle = json["cypher_title"];
    _description = json["description"];
    _cypherDescription = json["cypher_description"];
    _attachments = json["attachments"];
    _date = json["date"];
    _department = json["department"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["sno"] = _sno;
    map["title"] = _title;
    map["cypher_title"] = _cypherTitle;
    map["description"] = _description;
    map["cypher_description"] = _cypherDescription;
    map["attachments"] = _attachments;
    map["date"] = _date;
    map["department"] = _department;
    return map;
  }

}