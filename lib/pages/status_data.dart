import 'package:flutter/material.dart';
//this page includes My status tile only
class Status_data extends StatelessWidget {
  const Status_data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            //backgroundImage: Icon(Icons.person_outline),
            backgroundImage: NetworkImage(
                "https://w7.pngwing.com/pngs/481/915/png-transparent-computer-icons-user-avatar-woman-avatar-computer-business-conversation.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.greenAccent,
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      title: Text("My Status"),
      subtitle: Text("Tap to add status update"),
    );
    
  }
}
