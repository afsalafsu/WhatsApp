import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  Camera({Key? key}) : super(key: key);
  late CameraController camcontrol;
  
 
  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  var cameravalue;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.camcontrol=CameraController(cameras![0], ResolutionPreset.high);
    cameravalue=widget.camcontrol.initialize();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            builder: 
            (context,snapshot)
            {
             if(snapshot.connectionState==ConnectionState.done)
             {
               return CameraPreview(widget.camcontrol);
             }
             return CircularProgressIndicator();
           },
          future: cameravalue,
          )
        ],
      ),
    );
}
}
List<CameraDescription>? cameras;
