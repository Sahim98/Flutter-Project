import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/head-treat.dart';
import 'package:flutter_application_1/head_injury.general.dart';
import 'package:flutter_application_1/head_recog.dart';
import 'package:flutter_application_1/head_vid.dart';
import 'package:http/http.dart';

class HeadInjury extends StatefulWidget {
  const HeadInjury({Key? key}) : super(key: key);

  @override
  State<HeadInjury> createState() => _HeadInjuryState();
}

class _HeadInjuryState extends State<HeadInjury> {
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
                'Head Injury',
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
                height: MediaQuery.of(context).size.height / 5,
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
                          'General Wrning',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GeneralWarning()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
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
                          'Recognition',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Recognition()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
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
                          'Treatment',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => head_treat()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
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
                          'Watch Video',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => head_vid()),
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
