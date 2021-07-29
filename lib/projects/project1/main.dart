import 'dart:math';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:hello_world_flutter/projects/project1/const/colors.dart';

void main() => runApp(BaseDesign());

class BaseDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Flutter Application",
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "my first AppBar",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: CostumeColors.yellow,
            ),
            body: FirstScreen()));
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: Center(
        child: Text(
          "your lucky number is ${generateLuckyNumber()}",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.blueGrey, fontSize: 30.0),
        ),
      ),
    );
  }

  int generateLuckyNumber() {
    return Random().nextInt(100);
  }
}
