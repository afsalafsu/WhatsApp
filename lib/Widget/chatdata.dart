import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Widget/chatbubble.dart';
import 'package:whatsapp/models/messagemodel.dart';

// each persons chat details
class Chatdata extends StatefulWidget {
  Chatdata({Key? key}) : super(key: key);
  TextEditingController txtcntrol = TextEditingController();
  FocusNode focNode = FocusNode();
  bool istyping = false;
  bool showemoji = false;
  @override
  State<Chatdata> createState() => _ChatdataState();
}

class _ChatdataState extends State<Chatdata> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Stack(
        children: [
          Image.asset(
            "assets/images/chatbg.png",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          //Chatbubble(msgdata: msg[0])
          ListView.builder(
            itemBuilder: (context, index) {
              return Chatbubble(msgdata: msg[index]);
            },
            itemCount: msg.length,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                  
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      child: Card(
                        child: TextField(
                          controller: widget.txtcntrol,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            //focusColor: ,
                            hintText: "Message",
                            prefixIcon: IconButton(
                              onPressed: () {                                
                                setState(() {
                                  widget.focNode.unfocus();
                                  widget.showemoji = !widget.showemoji;
                                  
                                 // widget.focNode.requestFocus();
                                });
                              },
                              icon: widget.showemoji
                                  ? Icon(Icons.keyboard)
                                  : Icon(Icons.emoji_emotions),
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.attach_file),
                                  padding: EdgeInsets.all(1),
                                  splashRadius: 5,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.currency_rupee),
                                  padding: EdgeInsets.all(1),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt),
                                  padding: EdgeInsets.all(0),
                                )
                              ],
                            ),
                          ),
                          onTap:(){
                          setState(() {
                            widget.showemoji=false;
                          });
                          },
                          onChanged: (abc) {
                            setState(() {
                              //setstate is used to change the ui in real time
                              if (abc.length == 0) {
                                widget.istyping = false;
                              } else {
                                widget.istyping = true;
                              }
                            });
                          },
                          focusNode: widget.focNode,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 4, 5),
                      child: CircleAvatar(
                        child: widget.istyping
                            ? Icon(
                                Icons.send,
                                size: 20,
                              )
                            : Icon(
                                Icons.mic,
                                size: 20,
                              ),
                      ),
                    )
                  ],
                ),
                 widget.showemoji? selectemoji(): Container()
                //selectemoji()
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget selectemoji() {

  // print("hello");
  return SizedBox(
    height: 250,
    child: EmojiPicker(
      onEmojiSelected: (Category, Emoji) {
        widget.txtcntrol.text= "${widget.txtcntrol.text}${Emoji.emoji}";
        //print(Category);
        //print(Emoji);
    
      },
    ),
  );
  
}
}



List<Messagemodel> msg = [
  Messagemodel(message: "Helo", time: "9:50", issent: true, isread: true),
  Messagemodel(message: "hi", time: "9:52", issent: false, isread: false),
  Messagemodel(
      message:
          "how are youhow are youhow are youhow are youhow are youhow are youhow are you",
      time: "9:53",
      issent: true,
      isread: false),
  Messagemodel(message: "fine", time: "9:54", issent: false, isread: false),
];
