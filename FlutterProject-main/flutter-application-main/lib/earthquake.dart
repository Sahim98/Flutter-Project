import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Earthquake extends StatefulWidget {
  const Earthquake({Key? key}) : super(key: key);

  @override
  State<Earthquake> createState() => _EarthquakeState();
}

class _EarthquakeState extends State<Earthquake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Earthquake',
                textStyle: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 200),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          //backgroundColor: Colors.blue
        ),
        body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            iconColor: Colors.teal,
                            leading: Icon(Icons.medical_services),
                            title: Text(
                              'If you are INDOORS -- STAY THERE! Get under a desk or table and hang on to it (Drop, Cover, and Hold on!) or move into a hallway or against an inside wall.\nSTAY CLEAR of windows, fireplaces, and heavy furniture or appliances.\nGET OUT of the kitchen, which is a dangerous place (things can fall on you).\nDON\'T run downstairs or rush outside while the building is shaking or while there is danger of falling and hurting yourself or being hit by falling glass or debris.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            iconColor: Colors.teal,
                            leading: Icon(Icons.medical_services),
                            title: Text(
                              'If you are OUTSIDE -- get into the OPEN, away from buildings, power lines, chimneys, and anything else that might fall on you.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            iconColor: Colors.teal,
                            leading: Icon(Icons.medical_services),
                            title: Text(
                              'If you are DRIVING -- stop, but carefully. Move your car as far out of traffic as possible.\nDO NOT stop on or under a bridge or overpass or under trees, light posts, power lines, or signs.\nSTAY INSIDE your car until the shaking stops. When you RESUME driving, watch for breaks in the pavement, fallen rocks, and bumps in the road at bridge approaches.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            iconColor: Colors.teal,
                            leading: Icon(Icons.medical_services),
                            title: Text(
                              'If you are in a MOUNTAINOUS AREA -- watch out for falling rock, landslides, trees, and other debris that could be loosened by quakes.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            iconColor: Colors.teal,
                            leading: Icon(Icons.medical_services),
                            title: Text(
                              'If you are near the OCEAN - see these safety rules from NOAA\'s Tsunami Warning Center.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
