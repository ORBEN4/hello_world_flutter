import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/projects/project2/const.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.font}) : super(key: key);

  final Font font;

  @override
  SubHome createState() => SubHome();
}

class SubHome extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      // width: 200,
      // height: 100,
      //     margin: EdgeInsets.all(15.0),
      margin: EdgeInsets.only(left: 10, top: 20, right: 30, bottom: 40),
      child: Text(
        "Flight",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 75,
            fontFamily: widget.font.fontFamily,
            fontWeight: widget.font.getRandomFont()),
      ),
    ));
  }
}
