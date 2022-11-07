import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Infant());
}

class Infant extends StatefulWidget {
  const Infant({super.key});

  @override
  State<Infant> createState() => _InfantState();
}

class _InfantState extends State<Infant> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  'Adult/Child',
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
            //backgroundColor: Colors.blue,
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
                              Text(
                                'Never use abdominal thrusts on an infant.',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '1. Lay the infant face down on your thigh while supporting their head.\ngive the infant up to five back blows',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '2. Turn the infant over so they are lying on your other thigh and checktheir mouth obious obstructions (donot do a blind finger sweep). If chocking persists, try up to five chest thrusts.',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '3. Place two fingers on the breastbone, one finger breath  below the nipple line and push downwards.',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '4. Check the mouth.',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '5. If the obstruction has not cleared, dial 999/112 for emergency helpusing your mobile phone. Taking the infant with you if necessary.',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
