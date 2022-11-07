import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter_sms/flutter_sms.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> recipients = [
  '01786370850',
  '01518318801',
  '01786371050',
  '01786374100',
  '01786370660',
];
String? nameP, phoneP;

List name = ['Fahim', 'Rajib', 'Sakib', 'Rafi', 'Sumon'];

String message = "I'm in danger!! Help me!!!";

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  final _controller = TextEditingController();
  bool _flag = true;
  bool showPass = false;
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  GlobalKey fst = GlobalKey<FormState>();
  String? _error;

  Future<void> _setText() async {
    if (_controller.text.length != 11) {
      _error = 'Please enter a valid phone number';
    } else {
      _error = null;
    }
  }

  void setval() {
    setState(() {
      showPass = !showPass;
    });
  }

  @override
  Widget build(BuildContext context) => new Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter Name',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 211, 208, 208),
                          ),
                          controller: _controller2,
                          keyboardType: TextInputType.text,
                          maxLength: 40,
                          autocorrect: true,
                          cursorColor: Colors.purple,
                          cursorWidth: 3,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Form(
                          key: fst,
                          child: TextField(
                            decoration: InputDecoration(
                                errorText: _error,
                                labelText: 'Phone Number',
                                hintText: 'Number must be 11 digits',
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(255, 211, 208, 208),
                                suffixIcon: const IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: null,
                                )),
                            controller: _controller1,
                            keyboardType: TextInputType.text,
                            maxLength: 11,
                            obscureText: showPass,
                            cursorColor: Colors.purple,
                            cursorWidth: 3,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: ElevatedButton(
                            onPressed: _setText,
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(7),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                            child: const Text('Submit')),
                      ),
                    ],
                  ),
                );
              },
              child: Icon(Icons.add_call),
              backgroundColor: Colors.greenAccent,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.teal,
            elevation: 20,
            onPressed: () {
              _sendSMS(message, recipients);
            },
            child: Icon(Icons.message_outlined),
          ),
        ],
      ),
      appBar: new AppBar(
        title: const Text("Call now"),
        leading: Icon(Icons.call),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(itemBuilder: itemBuilder, itemCount: name.length));

  Widget itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey[800],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          iconColor: Colors.teal,
          title: Text(
            name[index],
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('+88' + recipients[index]),
          leading: Icon(Icons.account_circle_rounded, color: Colors.teal),
          trailing: Container(
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        showDialog(
                          barrierColor: Colors.grey.withOpacity(.5),
                          useSafeArea: true,
                          context: context,
                          builder: (context) => SimpleDialog(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    // ignore: prefer_interpolation_to_compose_strings
                                    'Update Contact of ' + name[index],
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText: 'Enter contact name: ',
                                    labelText: 'Contact name ',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green)),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      nameP = value;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText: 'Enter contact number: ',
                                    labelText: 'Contact number ',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green)),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      phoneP = value;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(60),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: _flag
                                          ? Colors.lightGreen
                                          : Colors.blue,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        name[index] = nameP;
                                        recipients[index] = phoneP!;
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text(_flag ? 'Update' : 'Updated')),
                              )
                            ],
                          ),
                        );
                      });
                    },
                  ),
                ),
                Expanded(
                    child: IconButton(
                  onPressed: () {
                    setState(() {
                      recipients.removeAt(index);
                      name.removeAt(index);
                    });
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                )),
              ],
            ),
          ),
          onTap: () => launch('tel:+88${recipients[index]}'),
        ),
      ),
    );
  }
}
