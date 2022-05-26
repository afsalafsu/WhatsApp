import 'package:flutter/material.dart';
import 'package:whatsapp/Widget/chatdata.dart';
import 'package:whatsapp/models/listmodels.dart';
//person chat details appbar
class Chatdetail extends StatefulWidget {
 Chatdetail({Key? key,required this.abc}) : super(key: key);
  Welcome abc;
  String name="";
  String avt="";
  @override
  State<Chatdetail> createState() => _ChatdetailState();
}

class _ChatdetailState extends State<Chatdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        leading: InkWell(
          onTap: ()  {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(backgroundImage: NetworkImage(widget.abc.avatar),
              )
            ],
          ),
        ),
        leadingWidth: 70.0,
        title: Column(
          children: [
            Text(widget.abc.name),
            Text("online",style: TextStyle(fontSize: 12),)
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ) ,
        titleSpacing: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)         
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("Add to contact")),
              PopupMenuItem(child: Text("Report")),
              PopupMenuItem(child: Text("Block")),
              PopupMenuItem(child: Text("Search")),
              PopupMenuItem(child: Text("Mute Notification")),
              PopupMenuItem(child: Text("Wall paper")),
              PopupMenuItem(child: Text("More")),
            ];

          })
        ],
        ),
        body: Container(child: Chatdata()),
    );
  }
}
