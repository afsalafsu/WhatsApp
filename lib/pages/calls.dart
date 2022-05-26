import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/callmodels.dart';

List<Callmodel> callmod = [
  Callmodel(name: "sameer", image: "image", time: "time"),
  Callmodel(name: "sameer", image: "image", time: "time"),
  Callmodel(name: "sameer", image: "image", time: "time"),
];

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/st1.jpg"),
          ),
          title: Text(callmod[index].name),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_received,
                color: Colors.green,
              ),
              Text("30 minutes ago"),
            ],
          ),
          trailing: Icon(Icons.call,color: Colors.green,),
        );
      },
      itemCount: callmod.length,
    );
  }
}
