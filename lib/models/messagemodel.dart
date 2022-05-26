// To parse this JSON data, do
//
//     final messagemodel = messagemodelFromJson(jsonString);

import 'dart:convert';

Messagemodel messagemodelFromJson(String str) => Messagemodel.fromJson(json.decode(str));

String messagemodelToJson(Messagemodel data) => json.encode(data.toJson());

class Messagemodel {
    Messagemodel({
        required this.message,
        required this.time,
        required this.issent,
        required this.isread,
    });

    String message;
    String time;
    bool issent;
    bool isread;

    factory Messagemodel.fromJson(Map<String, dynamic> json) => Messagemodel(
        message: json["message"],
        time: json["time"],
        issent: json["issent"],
        isread: json["isread"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "time": time,
        "issent": issent,
        "isread": isread,
    };
}