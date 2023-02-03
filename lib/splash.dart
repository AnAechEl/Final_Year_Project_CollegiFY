import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}
late VideoPlayerController _controller;
@override
void initState(){
  super.initState();
  _controller=VideoPlayerController.asset('assets/ss.mp4');
  initialize().then((_){
    setState((){});
  });
  setVolume(0.0);
}
class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(),
    );
  }
}
