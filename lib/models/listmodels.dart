// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
       required this.avatar,
       required this.name,
      required this.lastmessage,
      required this.time,
    });

    String avatar;
    String name;
    String lastmessage;
    String time;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        avatar: json["avatar"],
        name: json["name"],
        lastmessage: json["lastmessage"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "lastmessage": lastmessage,
        "time": time,
    };
}
