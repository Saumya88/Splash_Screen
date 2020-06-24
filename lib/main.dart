import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(
              backgroundColor: Colors.blueAccent,
              imagePath: 'images/diamond.png',
              splashTime: 1,
              nextScreenPath: HomeScreen.id,
            ),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
