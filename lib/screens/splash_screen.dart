import 'package:flutter/material.dart';
import 'package:planets_app/screens/login_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black87,
      duration: 2000,
        splash: Icon(Icons.workspaces_filled,color: Colors.white,size: 100,),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: LoginScreen(),
    );
  }
}
