import 'dart:math';

import 'package:demo_app/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  double height;
  double weight;
  bool isMale = true;
  ResultPage({super.key, required this.height, required this.weight, required this.isMale});

  @override
  Widget build(BuildContext context) {
    double calculate = weight / pow(height / 100, 2);
    String result = '';
    switch (calculate) {
      case < 16:
        result = "severe thinness";
        break;
      case > 18.5 && < 25:
        result = "Normal";
        break;
      case > 25 && < 30:
        result = "Over Weight";
        break;
      case > 30:
        result = "Obese";
        break;
      default:
    }
    return Scaffold(
      backgroundColor: isMale ? kbleu1 : kblack,
      //appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Result is : ",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
                  SizedBox(height: 20,),
              Text(calculate.toStringAsFixed(1),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34)),
                      SizedBox(height: 20,), //krmel y3tini ra2e we7ed ba3ed l ","
              Text(result, style: TextStyle(color: Colors.white, fontSize: 30)),
              SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:  Icon(
                  Icons.refresh,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
