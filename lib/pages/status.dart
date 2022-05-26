import 'package:flutter/material.dart';
import 'package:whatsapp/pages/other_status.dart';
import 'package:whatsapp/pages/status_data.dart';
import 'package:whatsapp/pages/statussample.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
             FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.greenAccent[700],
              elevation: 5,
              child: Icon(Icons.camera_alt),
            ),
          
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Status_data(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 33,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 7),
                child: Text("Recent updates"),
              ),
            ),
          //  Otherstat(),
          //  Otherstat(),
            Otherstatus(),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 33,
            //   color: Colors.grey,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 7),
            //     child: Text("Viewed updates"),
            //   ),
            // ),
          ],
        ),
      )
    );
    
  }
}
