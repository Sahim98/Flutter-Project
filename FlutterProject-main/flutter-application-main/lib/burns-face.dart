import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FaceMouth extends StatefulWidget {
  const FaceMouth({Key? key}) : super(key: key);

  @override
  State<FaceMouth> createState() => _FaceMouthState();
}

class _FaceMouthState extends State<FaceMouth> {
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
                'Face/Mouth',
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
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text(
                              '1. Check for danger.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '2. Dial 999/112 for an ambulance and tell them  you suspect burns  to the airways.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '3. Maintain the airway, loosening clothing around the casualty\'s neck if needed.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '4. Give the casualty ice or sips of cold water to relieve the pain and any swelling.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '5. Monitor the casualty continuously as any injury may cause deffulty in breathing.',
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
