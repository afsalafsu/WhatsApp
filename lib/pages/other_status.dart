import 'package:flutter/material.dart';
import 'package:whatsapp/models/statusmodel.dart';
import 'package:whatsapp/pages/statussample.dart';

List<Statusmodel> stmodel = [
  Statusmodel(
      name: "Rugmesh",
      time: "Today 9:30",
      image: "assets/images/st1.jpg",
      view: false),
  Statusmodel(
      name: "sharon",
      time: "Today 5:30",
      image: "assets/images/st2.jpg",
      view: true),
  Statusmodel(
      name: "sani",
      time: "50 minutes ago",
      image: "assets/images/st3.jpg",
      view: true),
  Statusmodel(
      name: "Fardan",
      time: "yesterday",
      image: "assets/images/st1.jpg",
      view: false)
];

class Otherstatus extends StatelessWidget {
  const Otherstatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
    shrinkWrap: true,
      itemBuilder: (context, index) {
        return Otherstat(
          stdata: stmodel[index],
        );
        // ListTile(
        //     leading: CircleAvatar(
        //       radius: 20,
        //       backgroundImage: AssetImage(
        //        stmodel[index].image
        //       ),
        //     ),
        //     title: Text(stmodel[index].name),
        //     subtitle: Text(stmodel[index].time),
        //   );
      },
      itemCount: stmodel.length,
    );
  }
}
