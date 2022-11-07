import 'package:flutter/material.dart';

import 'burns_info.dart';

class Burning extends StatefulWidget {
  const Burning({Key? key}) : super(key: key);

  @override
  State<Burning> createState() => _BurningState();
}

class _BurningState extends State<Burning> {
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
          title: Text('Burns'),
          //backgroundColor: Colors.blue,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Important Information',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Info()),
                          );
                        },
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'General Information',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {},
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Face/Mouth',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {},
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Chemical-body/eyes',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {},
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
