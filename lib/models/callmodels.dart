// To parse this JSON data, do
//
//     final callmodel = callmodelFromJson(jsonString);

import 'dart:convert';

Callmodel callmodelFromJson(String str) => Callmodel.fromJson(json.decode(str));

String callmodelToJson(Callmodel data) => json.encode(data.toJson());

class Callmodel {
    Callmodel({
        required this.name,
        required this.image,
        required this.time,
    });

    String name;
    String image;
    String time;

    factory Callmodel.fromJson(Map<String, dynamic> json) => Callmodel(
        name: json["name"],
        image: json["image"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "time": time,
    };
}