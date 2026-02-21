import 'package:flutter/material.dart';
import 'package:space/core/ColorManager.dart';
import 'package:space/model/planet.dart';
import 'package:space/screen/component/planetScreen.dart';

import 'component/planetViewer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static String route = "/main";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        clipBehavior: Clip.none,
        centerTitle: true,
        leading: IconButton.filled(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primary,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Explore",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            Container(
              /// color: Colors.red,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Transform(
                    alignment: Alignment.center,
                    transform:
                        Matrix4.diagonal3Values(1.2, 1.2, 1) *
                        Matrix4.translationValues(0, -75, 0),
                    child: Stack(
                      children: [
                        Image.asset("assets/images/half_planet.png"),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0x000E0E0E), Color(0xFF0E0E0E)],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Transform.translate(
                      offset: Offset(0, -90),
                      child: Text(
                        "Which planet\nwould you like to explore?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -60),
              child: PlanetViewer(planets: Planet.planets, onExplore: (planet) {
                Navigator.of(context).pushNamed(PlanetScreen.route, arguments: planet);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
