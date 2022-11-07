import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future getdata() async {
    var firesotre = FirebaseFirestore.instance;

    QuerySnapshot qr = await firesotre.collection("Cloths").get();
    return qr.docs;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       ),
    );
  }
}
