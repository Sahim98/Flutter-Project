import 'package:flutter/material.dart';
import 'package:flutter_application_1/AcidAttack.dart';
import 'package:flutter_application_1/Burning.dart';
import 'package:flutter_application_1/Choking.dart';
import 'package:flutter_application_1/HeadInjury.dart';
import 'package:flutter_application_1/Stroke.dart';

class situation extends StatefulWidget {
  const situation({Key? key}) : super(key: key);

  @override
  State<situation> createState() => _situationState();
}

class _situationState extends State<situation>
    with SingleTickerProviderStateMixin {
  List cls = [Choking(), AcidAttack(), Burning(), HeadInjury(), Stroke()];
  List ls = ['Choking', 'Acid Attack', 'Burns', 'Head Injury', 'Stroke'];
  @override
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    controller.forward();
    super.initState();
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: AnimatedList(
              key: _key,
              initialItemCount: ls.length,
              itemBuilder: (context, index, animation) {
                return SlideTransition(
                    position:
                        Tween<Offset>(begin: Offset(-2, -2), end: Offset.zero)
                            .animate(controller),
                    child: ListTile(
                      iconColor: Colors.teal,
                      leading: Icon(Icons.medical_services),
                      title: Text(
                        ls[index],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => cls[index]),
                        );
                      },
                    ));
              },
            ),
          ),
        ),
      ),
    );
  }
}
/*
 
*/