import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class General_info extends StatefulWidget {
  const General_info({Key? key}) : super(key: key);

  @override
  State<General_info> createState() => _BurningState();
}

class _BurningState extends State<General_info> {
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
                'General Information',
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
                            children: [
                              Text(
                                '1. Do not tuch the burnt area.',
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '2. Leave any clothing stuck to the burn place unless it is contaminated with chemicals.',
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '3. Leave any blisters intact.',
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '4. Hold the burn under cool  or lukewarm running water for a minimum of 20 minutes or until the pain ease.',
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
