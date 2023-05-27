class Test {
  List<Features>? features;

  Test({this.features});

  Test.fromJson(Map<String, dynamic> json) {
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features!.add(new Features.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.features != null) {
      data['features'] = this.features!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Features {
  String? type;
  Properties? properties;
  Geometry? geometry;

  Features({this.type, this.properties, this.geometry});

  Features.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    properties = json['properties'] != null
        ? new Properties.fromJson(json['properties'])
        : null;
    geometry = json['geometry'] != null
        ? new Geometry.fromJson(json['geometry'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.properties != null) {
      data['properties'] = this.properties!.toJson();
    }
    if (this.geometry != null) {
      data['geometry'] = this.geometry!.toJson();
    }
    return data;
  }
}

class Properties {
  String? aMPHOEIDN;
  String? tAMBONIDN;
  int? vILLIDN;
  String? vILLNAME;

  Properties({this.aMPHOEIDN, this.tAMBONIDN, this.vILLIDN, this.vILLNAME});

  Properties.fromJson(Map<String, dynamic> json) {
    aMPHOEIDN = json['AMPHOE_IDN'];
    tAMBONIDN = json['TAMBON_IDN'];
    vILLIDN = json['VILL_IDN'];
    vILLNAME = json['VILL_NAME'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AMPHOE_IDN'] = this.aMPHOEIDN;
    data['TAMBON_IDN'] = this.tAMBONIDN;
    data['VILL_IDN'] = this.vILLIDN;
    data['VILL_NAME'] = this.vILLNAME;
    return data;
  }
}

class Geometry {
  String? type;
  List<double>? coordinates;

  Geometry({this.type, this.coordinates});

  Geometry.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coordinates'] = this.coordinates;
    return data;
  }
}
