class UploadImageAndProcessModel {
  List<Inputs> inputs;

  UploadImageAndProcessModel({this.inputs});

  UploadImageAndProcessModel.fromJson(Map<String, dynamic> json) {
    if (json['inputs'] != null) {
      inputs = new List<Inputs>();
      json['inputs'].forEach((v) {
        inputs.add(new Inputs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.inputs != null) {
      data['inputs'] = this.inputs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Inputs {
  Data data;

  Inputs({this.data});

  Inputs.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  Image1 image;

  Data({this.image});

  Data.fromJson(Map<String, dynamic> json) {
    image = json['image'] != null ? new Image1.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    return data;
  }
}

class Image1 {
  String base64;

  Image1({this.base64});

  Image1.fromJson(Map<String, dynamic> json) {
    base64 = json['base64'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['base64'] = this.base64;
    return data;
  }
}