import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: VideoPlayerController.asset('assets/ss.mp4'), nextScreen: LoginPage(),duration: 5000);
  }
}


