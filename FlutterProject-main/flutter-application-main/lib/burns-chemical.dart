import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Chemical extends StatefulWidget {
  const Chemical({Key? key}) : super(key: key);

  @override
  State<Chemical> createState() => _ChemicalState();
}

class _ChemicalState extends State<Chemical> {
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
                'Chemical - Body/Eyes',
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
                mainAxisAlignment: MainAxisAlignment.start,
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
                                'For body:',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Douse the burn with cool or lukewarm running water until the ambulance arrives.',
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'As you pour cold water over the burn, carefully remove any contaminated clothing.',
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'For eyes:',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Irrigate under cool or lukewarm running water until the ambulance   arrives. Including both sides of the eyelids when irrigating. Ask the casualry to reemove contact lenses if they can.\n\nEnsure that water drains away from the face. ',
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
            )));
  }
}
