import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/pages/camera.dart';
import 'package:whatsapp/pages/chatdetails.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/chat.dart';
import 'package:whatsapp/pages/status.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 cameras= await availableCameras();
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'whatsapp',
      home: Whatsapphome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Whatsapphome extends StatefulWidget {
  Whatsapphome({Key? key}) : super(key: key);

  @override
  State<Whatsapphome> createState() => _WhatsapphomeState();
}

class _WhatsapphomeState extends State<Whatsapphome>
    with SingleTickerProviderStateMixin {
  late TabController tbcontrol;
  @override
  void initState() {
    super.initState();
    tbcontrol = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          //title is a widget that accepts text widget
          title: Text('WhatsApp'),//it is used to wrap the widget
          actions: [
            IconButton(
              onPressed: () {
                print("Hello, Whatsapp search");
              },
              icon: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (popup) {
              return [
                PopupMenuItem(
                  child: Text("New Group"),
                  onTap: () {
                    print("New Group");
                  },
                ),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Linked Device")),
                PopupMenuItem(child: Text("Starred message")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings"))
              ];
            })
          ],  
          bottom: TabBar(
            tabs: [
              
              Container(child: Tab(icon: Icon(Icons.camera_alt),),width: 10,),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS")
            ],
            controller: tbcontrol,
          ),
        ),
        body: TabBarView(controller: tbcontrol, children: [
          Camera(),
          Chatpage(),
          Status(),
          Calls(),
        ],
        ),
        //It is used to set the view
        
        );
  }
}
