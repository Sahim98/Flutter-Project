import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _BurningState();
}

class _BurningState extends State<Info> {
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
                'Important Information',
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
          padding: const EdgeInsets.all(15.0),
          child: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText('When treating burns: ',
                                    speed: Duration(milliseconds: 200),
                                    textStyle: TextStyle(
                                        fontSize: 28,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '1.\tDo not remove anything that is sticking to the burn.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '2.\tDo not over cool the casualty as there is risk to lowering their body tempurature too much. ',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '3.\tDo not use lotions, ointments or creams',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '4.\tDo not use adhesive dressings.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '5.\tDo not break blisters.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}

