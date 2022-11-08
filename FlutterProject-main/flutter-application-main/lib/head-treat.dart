import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class head_treat extends StatefulWidget {
  const head_treat({Key? key}) : super(key: key);

  @override
  State<head_treat> createState() => _head_treatState();
}

class _head_treatState extends State<head_treat> {
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
                'Head Injury/General Warning',
                textStyle: const TextStyle(
                  fontSize: 22.0,
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
                          Text(
                            '1. Monitor casualty regularly. Keep a close eye on the level of response in case it deteriorates.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '2. When they have recovered ask a responsible adult to look after them.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '3. If they were playing a sport when it heppened do not let them return to play until they have been fully assessecby a medical practitionar',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '4. Seek medical help if any of the following apply: ',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '- Increasing drowsiness.\n\n- Persistent headache.\n\n- Difficulty in spaeaking or walking.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '- Vomiting.\n\n- Double vision.\n\n- Seizure.\n\n- Over 65 years old.\n\n- They are taking anti-clotting medication.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          Text(
                            '\n- They are intoxicated  with drugs or alcohol.\n\n- There is no responsible adult to look after them.',
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
        ));
  }
}
