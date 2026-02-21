import 'package:flutter/material.dart';
import 'package:space/model/planet.dart';

import '../../core/ColorManager.dart';
import '../mainScreen.dart';

class PlanetViewer extends StatefulWidget {
  PlanetViewer({required this.planets, super.key, required this.onExplore});

  List<Planet> planets;
  void Function(Planet planet) onExplore;

  @override
  State<PlanetViewer> createState() => _PlanetViewerState();
}

class _PlanetViewerState extends State<PlanetViewer> {
  late PageController _pageController;
  late int _currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
    _currentPage = 0;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.none,
            ///color: Colors.white,
            height: 380,
            width: double.infinity,
            child: PageView(
              onPageChanged: (currentPage) {
                setState(() {
                  _currentPage = currentPage;
                });
              },
              clipBehavior: Clip.none,
              controller: _pageController,
              children: widget.planets
                  .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(e.imageAsset,width: double.infinity, fit: BoxFit.cover),
                  ))
                  .toList(),
            ),
          ),
          Row(
            children: [
              IconButton.filled(
                color: Colors.white,
                onPressed: () {
                  _pageController.previousPage(duration: Duration(seconds: 1), curve: Curves.easeIn);
                },
                icon: Icon(Icons.arrow_back),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.primary,
                ),
              ),
              Expanded(
                child: Text(
                  widget.planets[_currentPage].name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              IconButton.filled(
                color: Colors.white,
                onPressed: () {
                  _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);

                },
                icon: Icon(Icons.arrow_forward),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.primary,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                widget.onExplore(widget.planets[_currentPage]);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.primary
              ),
              child: Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Explore ${widget.planets[_currentPage].name}", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                  )),
                  Icon(Icons.arrow_forward, color: Colors.white,size: 20,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
