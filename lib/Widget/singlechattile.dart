import 'package:flutter/material.dart';
import 'package:whatsapp/models/listmodels.dart';

import '../pages/chatdetails.dart';

class Singlechattile extends StatefulWidget {
   Singlechattile({ Key? key,required this.data }) : super(key: key);
Welcome data;
  @override
  State<Singlechattile> createState() => _SinglechattileState();
}

class _SinglechattileState extends State<Singlechattile> {
  @override
  Widget build(BuildContext context) {
    return  
     ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.data.avatar),
          ),
          title: Text(widget.data.name),
          trailing:Text(widget.data.time),
          subtitle: Text(widget.data.lastmessage),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Chatdetail(abc:widget.data);
              },
            ),
          ),        
    );
  }
}