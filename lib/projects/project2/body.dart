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

class Project2_1Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Exploring UI widgets",
        home: Scaffold(
          body: getListView(),
          appBar: AppBar(title: Text("main menu")),
        ));
  }
}

Widget getListView() {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("landscape"),
        subtitle: Text("an amazing view"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("landscape");
        },
      ),
      ListTile(
        leading: Icon(Icons.airplanemode_active),
        title: Text("fly"),
        subtitle: Text("airplane mode"),
        onTap: () {
          debugPrint("fly");
        },
      ),
      ListTile(
        leading: Icon(Icons.calculate),
        title: Text("calculate"),
        subtitle: Text("activate calculator"),
        onTap: () {
          debugPrint("calculate");
        },
      ),
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("alarm"),
        subtitle: Text("activate alarm"),
        onTap: () {
          debugPrint("alarm");
        },
      ),
    ],
  );
}
