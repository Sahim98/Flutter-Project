import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HeadInjury extends StatefulWidget {
  const HeadInjury({Key? key}) : super(key: key);

  @override
  State<HeadInjury> createState() => _HeadInjuryState();
}

class _HeadInjuryState extends State<HeadInjury> {
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
              'Head Injury',
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
        child: Container(
          child: Text('Processing...',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.4))),
        ),
      ),
    );
  }
}
