import 'dart:math';

import 'package:flutter/material.dart';
import 'package:space/core/ColorManager.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> translationAnimation;
  late Animation<double> rotationAnimation;
  late Animation<double> textPositionAnimation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    translationAnimation = Tween<double>(
      begin: -400,
      end: -200,
    ).animate(controller);

    rotationAnimation = Tween<double>(
      begin: -pi / 4,
      end: 0,
    ).animate(controller);

    textPositionAnimation = Tween<double>(
      begin: -100,
      end: 0
    ).animate(controller);

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigh = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        color: Colors.transparent,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,

          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Transform(
                  alignment: Alignment.center,
                  transform:
                      Matrix4.translationValues(
                        translationAnimation.value,
                        0,
                        0,
                      ) *
                      Matrix4.diagonal3Values(1.9, 1.9, 1) *
                      Matrix4.rotationZ(rotationAnimation.value),
                  child: child,
                );
              },
              child: Image.asset(
                "assets/images/main_image.png",
                height: screenHeigh * 0.9,
              ),
            ),
            AnimatedBuilder(
              animation: controller,
              builder: (cxt, child){
                return Transform.translate(offset: Offset(0, textPositionAnimation.value), child: child,);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Explore The Universe ",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.primary
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text("Explore", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400)),
                      )),
                      Icon(Icons.arrow_right, color: Colors.white,size: 20,)
                    ],
                  ),
                ),
              ),
            ),
            // Transform.translate(
            //   offset: Offset(-200, 0),
            //   child: Transform.scale(scale: 1.9, child: Image.asset("assets/images/main_image.png", height: screenHeigh*0.9,)),
            // ),
            // Positioned.directional(
            //   textDirection: TextDirection.ltr,
            //   end: 50,
            //   child: Image.asset("assets/images/main_image.png", height: screenHeigh*0.9,),
            // ),
          ],
        ),
      ),
    );
  }
}
