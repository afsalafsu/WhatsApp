import 'package:flutter/material.dart';
import 'package:whatsapp/Widget/singlechattile.dart';
import 'package:whatsapp/models/listmodels.dart';
import 'package:whatsapp/pages/chatdetails.dart';

class Chatpage extends StatelessWidget {
  Chatpage({Key? key}) : super(key: key);
  
  //Main page chat tabs
  List<Welcome> chatdata = [
    Welcome(
        avatar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1LeE-7Jh9RS5tQXFp10H80r9hqxhc5FATYw&usqp=CAU",
        name: "Afsal",
        lastmessage: "lastmessage",
        time: "time"),
    Welcome(
        avatar:
            "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
        name: "Rugmesh",
        lastmessage: "How are you",
        time: "9:45"),
    Welcome(
        avatar:
            "https://images.pexels.com/photos/1767434/pexels-photo-1767434.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        name: "suresh",
        lastmessage: "welcome",
        time: "12:00"),
    Welcome(
        avatar:
            "https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",
        name: "ramesh",
        lastmessage: "hi",
        time: "10:23")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) 
      {
        return Singlechattile(data: chatdata[index]);
      },
      itemCount: chatdata.length,
    );
  }
}
