import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Textual extends StatefulWidget {
  final String situationName, category;
  const Textual(this.situationName, this.category);

  @override
  State<Textual> createState() => _TextualState();
}

class _TextualState extends State<Textual> {
  Widget? viewText(String? stName, String? substName) {
    if (stName == "Choking" && substName == "Adult/Child") {
      return Padding(
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
      );
    } else if (stName == "Choking" && substName == "Infant") {
      return Padding(
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
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                  'Never use abdominal thrusts on an infant.',
                                  speed: Duration(milliseconds: 100),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            '1. Lay the infant face down on your thigh while supporting their head.\ngive the infant up to five back blows',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '\n2. Turn the infant over so they are lying on your other thigh and checktheir mouth obious obstructions (donot do a blind finger sweep). If chocking persists, try up to five chest thrusts.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          Text(
                            '\n\n3. Place two fingers on the breastbone, one finger breath  below the nipple line and push downwards.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '\n4. Check the mouth of victim.\n',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '5. If the obstruction has not cleared, dial 999/112 for emergency help using your mobile phone. Taking the infant with you if necessary.',
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
      );
    } else if (stName == "Acid Attack") {
      Padding(
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
                              '1. It is important to report the crime and call 999 immediately.',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '2. You should swiftly and very carefully remove contaminated clothing or jewellery.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '3. Then, you should rinse the affected skin under copious amounts of running water .',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '4. You should give priority to flushing the eyes and face (and the airway if affected) first.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '5. A bottle of water is insufficient. You will need a lot of water, ideally from a tap, hosepipe or shower.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '6. Use tap or bottled water. Or, wherever possible, use Hartmann’s or Normal Saline solutions.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '7. Paramedics should then  transport the victims to hospital as soon as possible.',
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
    } else if (stName == "Burns" && substName == "Face") {
      Padding(
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
      );
    } else if (stName == "Burns" && substName == "info") {
      Padding(
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
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('When treating burns: ',
                                  speed: Duration(milliseconds: 200),
                                  textStyle: TextStyle(
                                      fontSize: 28,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '1.\tDo not remove anything that is sticking to the burn.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '2.\tDo not over cool the casualty as there is risk to lowering their body tempurature too much. ',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '3.\tDo not use lotions, ointments or creams',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '4.\tDo not use adhesive dressings.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '5.\tDo not break blisters.',
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
      );
    } else if (stName == "Burns" && substName == "chemical") {
      Padding(
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
          ));
    }
   
    
  }

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
                '${widget.category}',
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
        body:  viewText(widget.situationName, widget.category),
        );
  }
}
