import 'package:flutter/material.dart';
import 'package:splash/src/splash_screen.dart';
import 'package:splash/src/home_screen.dart';

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
              backgroundColor: const [
                Colors.white,
              ],
              imagePath: 'assets/images/instagram.png',
              iconHeight: 100,
              iconWidth: 200,
              duration: 1,
              primaryText: 'Instagram',
              primaryTextColor: Colors.pink,
              primaryTextFont: 'Roboto', 
              primaryTextSize: 30,
              primaryTextWeight: FontWeight.w400,
              nextScreenPath: HomeScreen.id,
              debug: true,
            ),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
