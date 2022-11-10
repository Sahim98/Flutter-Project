import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/burning-general_info.dart';
import 'package:flutter_application_1/burns-chemical.dart';
import 'package:flutter_application_1/burns-face.dart';
import 'package:flutter_application_1/burns-vid.dart';

import 'burns_info.dart';

class Burning extends StatefulWidget {
  const Burning({Key? key}) : super(key: key);

  @override
  State<Burning> createState() => _BurningState();
}

class _BurningState extends State<Burning> {
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
                'Burns',
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
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Important Information',
                          style: TextStyle(fontSize: 26),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Info()),
                          );
                        },
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 6,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'General Information',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => General_info()),
                          );
                        },
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 6,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Face/Mouth',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FaceMouth()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 6,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Chemical-body/eyes',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chemical()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 6,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Burns-video',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => burn_vid()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
