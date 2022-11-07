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
        body: new Container(
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
                            '1.  Ask the casuality, Are you Choking?\n\n2. Encourage the casuality to cough.\n\n3. If they cannot clear the object themselves, Support them with one hand while leaning them forward:\n\ni) Give up to five back blows between shoulder blades.\n\nii)Check their mouth\n\n4. If unsuccessful, try up to five abdominal thrusts.\n\ni) Stand behind the casualty and link your hands below their rib cage with the lower hand clenched in a fist. Pull sharply inwards and upwards.\n\nii) Check their mouth.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
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
