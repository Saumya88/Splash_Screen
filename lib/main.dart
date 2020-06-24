import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              imageHeight: 300,
              imageWidth: 200,
              splashTime: 3,
              nextScreenPath: HomeScreen.id,
              splashText: 'By Android Studio',
              splashTextColor: Colors.blueGrey,
              splashTextFont: 'Piedra',
              splashTextSize: 45,
            ),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
