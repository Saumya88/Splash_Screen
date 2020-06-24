import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  static const String id = 'splashScreen';
  @required
  final Color backgroundColor;
  @required
  final int splashTime;
  @required
  final String imagePath;
  @required
  final String nextScreenPath;
  final String splashText;
  final Color splashTextColor;
  final double splashTextSize;
  final String splashTextFont;
  final double imageHeight;
  final double imageWidth;
  SplashScreen(
      {this.backgroundColor,
      this.splashTime,
      this.imagePath,
      this.nextScreenPath,
      this.splashText,
      this.imageHeight,
      this.imageWidth,
      this.splashTextColor,
      this.splashTextFont,
      this.splashTextSize});

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
    return Column(
      children: <Widget>[
        Center(
          child: Image.asset(
            widget.imagePath,
            height: widget.imageHeight,
            width: widget.imageWidth,
          ),
        ),
        Text(
          widget.splashText,
          style: TextStyle(
              color: widget.splashTextColor,
              fontFamily: widget.splashTextFont,
              fontSize: widget.splashTextSize),
        ),
      ],
    );
  }
}
