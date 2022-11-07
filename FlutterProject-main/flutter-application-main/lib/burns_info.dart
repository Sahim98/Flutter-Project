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
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('When treating burns: ',
                  speed: Duration(milliseconds: 200),
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '\ni) Do not remove anything that is sticking to the burn\n\nii) Do not over cool the victim as there is a risk of lowering their body temperature\n\niii) Do not use lotions or creams.\n\niv) Do not use adhesive dress ing \n\nv) Do not break blisters',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
