// To parse this JSON data, do
//
//     final statusmodel = statusmodelFromJson(jsonString);

import 'dart:convert';

Statusmodel statusmodelFromJson(String str) => Statusmodel.fromJson(json.decode(str));

String statusmodelToJson(Statusmodel data) => json.encode(data.toJson());

class Statusmodel {
    Statusmodel({
        required this.name,
        required this.time,
        required this.image,
        required this.view,
    });

    String name;
    String time;
    String image;
    bool view;

    factory Statusmodel.fromJson(Map<String, dynamic> json) => Statusmodel(
        name: json["name"],
        time: json["time"],
        image: json["image"],
        view: json["view"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "time": time,
        "image": image,
        "view": view,
    };
}