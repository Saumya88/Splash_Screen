import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text(
              'HOME SCREEN',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Piedra',
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
          ),
        ),
      ),
    );
  }
}
