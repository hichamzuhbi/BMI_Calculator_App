//import 'package:demo_app/resultOfCalculation.dart';
import 'package:demo_app/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //krmel 3alemet l debug l7amra lli 3azzewye tru7
      home: HomePage(),
    );
  }
}

