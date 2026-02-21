import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space/model/planet.dart';

import '../../core/ColorManager.dart';


class PlanetScreen extends StatelessWidget {
  PlanetScreen({super.key, required this.planet});

  Planet planet;
  static String route = "/planetDetail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        clipBehavior: Clip.none,
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
          "${planet.name}",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                ///color: Colors.red,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Transform(
                      alignment: Alignment.center,
                      transform:
                          Matrix4.translationValues(0, -100, 0),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/half_planet2.png"),
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
                    Transform.translate(
                      offset: Offset(0, -100),
                      child: Text(
                        planet.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),


                  ],
                ),
              ),


              Transform.translate(
                offset: Offset(0, -50),
                child: Container(
                  height: 400,
                  child: ModelViewer(
                    backgroundColor: ColorManager.background,
                    src: planet.modelAsset,
                    alt: 'A 3D model of an astronaut',

                  ),
                ),
              ),

              const Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                planet.description,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.6,
                  fontWeight: FontWeight.w300,
                ),
              ),

              const SizedBox(height: 15),

              buildInfoRow("Distance from Sun (km)", planet.distanceFromSunKm.toString()),
              buildInfoRow("Length of Day (hours)", planet.lengthOfDayHours.toString()),
              buildInfoRow("Orbital Period (Earth years)", planet.orbitalPeriodYears.toString()),
              buildInfoRow("Radius (km)", planet.radiusKm.toString()),
              buildInfoRow("Mass (kg)", planet.massKg.toString()),
              buildInfoRow("Gravity (m/s²)", planet.gravityMs2.toString()),
              buildInfoRow("Surface Area (km²)", planet.surfaceAreaKm2.toString()),
              const SizedBox(height: 16),

            ],
          ),
        ),
      ),
    );
  }
}

Widget buildInfoRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$title : ",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}