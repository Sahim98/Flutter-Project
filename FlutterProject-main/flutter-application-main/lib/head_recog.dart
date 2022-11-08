import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Recognition extends StatefulWidget {
  const Recognition({Key? key}) : super(key: key);

  @override
  State<Recognition> createState() => _RecognitionState();
}

class _RecognitionState extends State<Recognition> {
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
                'Head Injury/Recognition',
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
                          ListTile(
                            iconColor: Colors.green,
                            // ignore: prefer_const_constructors
                            leading: Icon(Icons.add_to_photos),
                            title: Text(
                              'Concussion',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'May have some or all of the following: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '(i) General blow to the head.\n\n(ii) General Headache.\n\n(iii) Impaired or becoming unresponsive.\n\n(iv) Dizziness on recovery.\n\n(v) Memory loss.\n\n(vi) Confusion.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            iconColor: Colors.green,
                            // ignore: prefer_const_constructors
                            leading: Icon(Icons.add_to_photos),
                            title: Text(
                              'Compression',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'May have some or all of the following:',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '(i) Recent blow to head.\n\n(ii) intanse and increasing headache.\n\n(iii) Becoming unresponsive.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '(iv) Poor response.\n\n(v) Confusion.\n\n(vi) Slow, noisy breathing.\n\n(vii) Slow, strong pulse.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '(viii) Pupils of unequal size.\n\n(ix) Weakness on one side.\n\n(x) Drowsiness.\n\n(x) Irritability, disorientation.\n\n(xi) Vomiting.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            iconColor: Colors.green,
                            // ignore: prefer_const_constructors
                            leading: Icon(Icons.add_to_photos),
                            title: Text(
                              'Fructures',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 28,
                              ),
                            ),
                          ),
                          Text(
                            'May have some or all of the following:',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '(i) History of injury\n\n(ii) Wound/bruise to head.\n\n(iii) Soft area/dip in  scalp.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '(iv) Low level of response.\n\n(v) Nose/ear fluid leak.\n\n(vi) Distortion of head/face.\n\n(vii) Irritability,confusion.',
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
