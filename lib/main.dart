import 'package:flutter/material.dart';
import 'package:space/core/ColorManager.dart';
import 'package:space/model/planet.dart';
import 'package:space/screen/component/planetScreen.dart';
import 'package:space/screen/homeScreen.dart';
import 'package:space/screen/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.background,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
      ),
      initialRoute: Homescreen.route,
      onGenerateRoute: (setting) {
        if (setting.name == Homescreen.route) {
          return MaterialPageRoute(builder: (context) => const Homescreen());
        } else if (setting.name == MainScreen.route) {
          return MaterialPageRoute(builder: (context) => const MainScreen());
        } else if (setting.name == PlanetScreen.route) {
          Planet planet = setting.arguments as Planet;

          return MaterialPageRoute(
            builder: (context) => PlanetScreen(planet: planet),
          );
        } else {
          return null;
        }
      },
      home: const Homescreen(),
    );
  }
}
