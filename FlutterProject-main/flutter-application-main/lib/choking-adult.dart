import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Adult extends StatefulWidget {
  const Adult({Key? key}) : super(key: key);

  @override
  State<Adult> createState() => _AdultState();
}

class _AdultState extends State<Adult> {
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
          padding: const EdgeInsets.all(8.0),
          child: new Container(
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
                              '1. Ask the victim, Are you Choking?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontFamily: "Font1",
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '2. Encourage the casuality to cough.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '3. If they cannot clear the object themselves, support them with one hand while learning them forwards:\n\n',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            Text(
                              '\t(i) Give up to five back blows between shoulder blades.\n\n(ii) Ckeck  their mouth.\n\n',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '4. if unsuccessful, try up to five abdominal thrusts:\n\n',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            Text(
                              '\t(i) Stand behind the casualty and link your hands below their cage with the lower hand clenched in a fist. Pull sharply inwards and upwards.\n\n(ii) Check there mouth.\n\n',
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '5. If the casualty still choking, dial 999/112 for the emergency services.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '6. Repeat steps 3 and 4, checking the mouth after each step untill thr hrlp arrives.',
                              style: TextStyle(
                                color: Colors.black,
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
