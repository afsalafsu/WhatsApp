import 'package:flutter/material.dart';
import 'package:whatsapp/models/messagemodel.dart';

class Chatbubble extends StatelessWidget {
  Chatbubble({Key? key, required this.msgdata}) : super(key: key);
  Messagemodel msgdata;

  @override
  Widget build(BuildContext context) {
    return 
    Align(
       alignment: msgdata.issent? Alignment.centerRight: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 50),
        child: Card(
          color: msgdata.issent ? Color(0xffdcf8c6) : Colors.white,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 30, 20),
                child:
                 Text(msgdata.message),
              ),
              Positioned(
                child: Row(
                  children: [
                    Text(msgdata.time,),
                    SizedBox(
                      width: 5.0,
                    ),
                    msgdata.issent
                        ? Icon(
                            Icons.done_all,
                            size: 15.0,
                            color: msgdata.isread ? Colors.blue : Colors.black,
                          )
                        : Container()
                  ],
                ),
                bottom: 4.0,
                right: 5.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
