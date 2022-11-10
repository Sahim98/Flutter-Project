import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/acid_text.dart';
import 'package:flutter_application_1/acid_video.dart';

class AcidAttack extends StatefulWidget {
  const AcidAttack({Key? key}) : super(key: key);

  @override
  State<AcidAttack> createState() => _AcidAttackState();
}

class _AcidAttackState extends State<AcidAttack> {
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
                'Acid Attack',
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
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
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
                          'Acid Attack - Text',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => acid_text()),
                          );
                        },
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
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
                          'Acid Attack-Video',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => acid_vid()),
                          );
                        },
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
