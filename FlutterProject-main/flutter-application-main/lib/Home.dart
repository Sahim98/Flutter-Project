import 'package:flutter/material.dart';
import 'package:flutter_application_1/subcategory.dart';
import 'package:flutter_application_1/tutorialoption.dart';

class Situation extends StatefulWidget {
  const Situation({Key? key}) : super(key: key);

  @override
  State<Situation> createState() => _SituationState();
}

class _SituationState extends State<Situation> {
  String ViewSituation(int stIndex) {
    if (stIndex == 0)
      return "Choking";
    else if (stIndex == 1)
      return "Acid Attack";
    else if (stIndex == 2)
      return "Burns";
    else if (stIndex == 3)
      return "Earthquake";
    else
      return "Drowning";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
          child: ListView(
        children: [
          for (int i = 0; i < 5; i++)
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: ListTile(
                iconColor: Colors.teal,
                leading: Icon(Icons.medical_services),
                title: Text(
                  ViewSituation(i),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                //subtitle: Text('Tap to view'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Subcategory(ViewSituation(i))),
                  );
                },
              ),
            ),
        ],
      )),
    );
  }
}
