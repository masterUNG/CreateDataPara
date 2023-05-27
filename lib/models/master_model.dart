// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

MasterModel welcomeFromJson(String str) => MasterModel.fromJson(json.decode(str));

String welcomeToJson(MasterModel data) => json.encode(data.toJson());

class MasterModel {
    List<List<List<List<double>>>> coordinates;

    MasterModel({
        required this.coordinates,
    });

    factory MasterModel.fromJson(Map<String, dynamic> json) => MasterModel(
        coordinates: List<List<List<List<double>>>>.from(json["coordinates"].map((x) => List<List<List<double>>>.from(x.map((x) => List<List<double>>.from(x.map((x) => List<double>.from(x.map((x) => x?.toDouble())))))))),
    );

    Map<String, dynamic> toJson() => {
        "coordinates": List<dynamic>.from(coordinates.map((x) => List<dynamic>.from(x.map((x) => List<dynamic>.from(x.map((x) => List<dynamic>.from(x.map((x) => x)))))))),
    };
}
