import 'package:flutter/material.dart';
import 'package:hello_world_flutter/projects/project2/Home.dart';
import 'package:hello_world_flutter/projects/project2/const.dart';

class Project2Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exploring UI widgets",
      home: Home(font: FontAssistant()),
    );
  }
}
