// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

String usermodelToJson(Usermodel data) => json.encode(data.toJson());

class Usermodel {
    Usermodel({
       required this.avatar,
       required this.name
      // required this.lastmessage,
      // required this.time,
    });

    String avatar;
    String name;
    // String lastmessage;
    // String time;

    factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
        avatar: json["avatar"],
        name: json["name"]
        // lastmessage: json["lastmessage"],
        // time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        // "lastmessage": lastmessage,
        // "time": time,
    };
}