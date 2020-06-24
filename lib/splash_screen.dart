import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  static const String id = 'splashScreen';
  final Color backgroundColor;
  final int splashTime;
  final String imagePath;
  final String nextScreenPath;
  final String splashText;
  SplashScreen(
      {this.backgroundColor,
      this.splashTime,
      this.imagePath,
      this.nextScreenPath,
      this.splashText});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
      Duration(seconds: widget.splashTime),
      () => Navigator.pushReplacementNamed(context, widget.nextScreenPath),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Center(
        child: Image(
          image: AssetImage(widget.imagePath),
        ),
      ),
    );
  }
}
