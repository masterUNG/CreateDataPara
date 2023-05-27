class BiomasModel {
  String? displayFieldName;
  FieldAliases? fieldAliases;
  String? geometryType;
  SpatialReference? spatialReference;
  List<Fields>? fields;
  List<Features>? features;

  BiomasModel(
      {this.displayFieldName,
      this.fieldAliases,
      this.geometryType,
      this.spatialReference,
      this.fields,
      this.features});

  BiomasModel.fromJson(Map<String, dynamic> json) {
    displayFieldName = json['displayFieldName'];
    fieldAliases = json['fieldAliases'] != null
        ? FieldAliases.fromJson(json['fieldAliases'])
        : null;
    geometryType = json['geometryType'];
    spatialReference = json['spatialReference'] != null
        ? SpatialReference.fromJson(json['spatialReference'])
        : null;
    if (json['fields'] != null) {
      fields = <Fields>[];
      json['fields'].forEach((v) {
        fields!.add(Fields.fromJson(v));
      });
    }
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features!.add(Features.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayFieldName'] = this.displayFieldName;
    if (this.fieldAliases != null) {
      data['fieldAliases'] = this.fieldAliases!.toJson();
    }
    data['geometryType'] = this.geometryType;
    if (this.spatialReference != null) {
      data['spatialReference'] = this.spatialReference!.toJson();
    }
    if (this.fields != null) {
      data['fields'] = this.fields!.map((v) => v.toJson()).toList();
    }
    if (this.features != null) {
      data['features'] = this.features!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FieldAliases {
  String? fID;
  String? iD;
  String? cOMPNM;
  String? aDDRESS;
  String? cOMPTYPE;
  String? cOMPGRP;
  String? pROVINCE;
  String? pOINTX;
  String? pOINTY;

  FieldAliases(
      {this.fID,
      this.iD,
      this.cOMPNM,
      this.aDDRESS,
      this.cOMPTYPE,
      this.cOMPGRP,
      this.pROVINCE,
      this.pOINTX,
      this.pOINTY});

  FieldAliases.fromJson(Map<String, dynamic> json) {
    fID = json['FID'];
    iD = json['ID'];
    cOMPNM = json['COMP_NM'];
    aDDRESS = json['ADDRESS'];
    cOMPTYPE = json['COMP_TYPE'];
    cOMPGRP = json['COMP_GRP'];
    pROVINCE = json['PROVINCE'];
    pOINTX = json['POINT_X'];
    pOINTY = json['POINT_Y'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FID'] = this.fID;
    data['ID'] = this.iD;
    data['COMP_NM'] = this.cOMPNM;
    data['ADDRESS'] = this.aDDRESS;
    data['COMP_TYPE'] = this.cOMPTYPE;
    data['COMP_GRP'] = this.cOMPGRP;
    data['PROVINCE'] = this.pROVINCE;
    data['POINT_X'] = this.pOINTX;
    data['POINT_Y'] = this.pOINTY;
    return data;
  }
}

class SpatialReference {
  int? wkid;
  int? latestWkid;

  SpatialReference({this.wkid, this.latestWkid});

  SpatialReference.fromJson(Map<String, dynamic> json) {
    wkid = json['wkid'];
    latestWkid = json['latestWkid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wkid'] = this.wkid;
    data['latestWkid'] = this.latestWkid;
    return data;
  }
}

class Fields {
  String? name;
  String? type;
  String? alias;
  int? length;

  Fields({this.name, this.type, this.alias, this.length});

  Fields.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    alias = json['alias'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['alias'] = this.alias;
    data['length'] = this.length;
    return data;
  }
}

class Features {
  Attributes? attributes;
  Geometry? geometry;

  Features({this.attributes, this.geometry});

  Features.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    geometry = json['geometry'] != null
        ? new Geometry.fromJson(json['geometry'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    if (this.geometry != null) {
      data['geometry'] = this.geometry!.toJson();
    }
    return data;
  }
}

class Attributes {
  int? fID;
  int? iD;
  String? cOMPNM;
  String? aDDRESS;
  String? cOMPTYPE;
  String? cOMPGRP;
  String? pROVINCE;
  double? pOINTX;
  double? pOINTY;

  Attributes(
      {this.fID,
      this.iD,
      this.cOMPNM,
      this.aDDRESS,
      this.cOMPTYPE,
      this.cOMPGRP,
      this.pROVINCE,
      this.pOINTX,
      this.pOINTY});

  Attributes.fromJson(Map<String, dynamic> json) {
    fID = json['FID'];
    iD = json['ID'];
    cOMPNM = json['COMP_NM'];
    aDDRESS = json['ADDRESS'];
    cOMPTYPE = json['COMP_TYPE'];
    cOMPGRP = json['COMP_GRP'];
    pROVINCE = json['PROVINCE'];
    pOINTX = json['POINT_X'];
    pOINTY = json['POINT_Y'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FID'] = this.fID;
    data['ID'] = this.iD;
    data['COMP_NM'] = this.cOMPNM;
    data['ADDRESS'] = this.aDDRESS;
    data['COMP_TYPE'] = this.cOMPTYPE;
    data['COMP_GRP'] = this.cOMPGRP;
    data['PROVINCE'] = this.pROVINCE;
    data['POINT_X'] = this.pOINTX;
    data['POINT_Y'] = this.pOINTY;
    return data;
  }
}

class Geometry {
  double? x;
  double? y;

  Geometry({this.x, this.y});

  Geometry.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    return data;
  }
}
