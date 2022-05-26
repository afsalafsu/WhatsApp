import 'package:flutter/material.dart';
import '../models/statusmodel.dart';

// List <Statusmodel> stmodel=[
// Statusmodel(name: "Rugmesh", time: "Today 9:30", image: "assets/images/st1.jpg", view: false),
// Statusmodel(name: "sharon", time: "Today 5:30", image: "assets/images/st2.jpg", view: true),
// Statusmodel(name: "sani", time: "50 minutes ago", image: "assets/images/st3.jpg", view: true),
// Statusmodel(name: "Fardan", time: "yesterday", image: "assets/images/st1.jpg", view: false)
// ];

class Otherstat extends StatefulWidget {
   Otherstat({ Key? key,required this.stdata }) : super(key: key);
Statusmodel stdata;

  @override
  State<Otherstat> createState() => _OtherstatState();
}

class _OtherstatState extends State<Otherstat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
               widget.stdata.image
              ),
            ),
            title: Text(widget.stdata.name),
            subtitle: Text(widget.stdata.time),
          ),
      ],
    );
  }
}