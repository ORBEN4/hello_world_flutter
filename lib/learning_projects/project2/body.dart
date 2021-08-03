import 'package:flutter/material.dart';
import 'package:hello_world_flutter/learning_projects/project2/Home.dart';
import 'package:hello_world_flutter/learning_projects/project2/const.dart';

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
          body: getManualListView(context),
          appBar: AppBar(title: Text("main menu")),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showBasicDialog(context, "Ani or");
              debugPrint("Floating action button was pressed");
            },
            child: Icon(Icons.add),
            tooltip: "add one more",
          ),
        ));
  }
}

class Project2_2Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Exploring UI widgets",
        home: Scaffold(
          body: getSmartListView(context),
          appBar: AppBar(title: Text("main menu")),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showBasicDialog(context, "Ani or");
              debugPrint("Floating action button was pressed");
            },
            child: Icon(Icons.add),
            tooltip: "add one more",
          ),
        ));
  }
}

Widget getManualListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("landscape"),
        subtitle: Text("an amazing view"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          showSnackBar(context, "landscape");
        },
      ),
      ListTile(
        leading: Icon(Icons.airplanemode_active),
        title: Text("fly"),
        subtitle: Text("airplane mode"),
        onTap: () {
          debugPrint("fly");
          showSnackBar(context, "fly");
        },
      ),
      ListTile(
        leading: Icon(Icons.calculate),
        title: Text("calculate"),
        subtitle: Text("activate calculator"),
        onTap: () {
          debugPrint("calculate");
          showSnackBar(context, "calculate");
        },
      ),
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("alarm"),
        subtitle: Text("activate alarm"),
        onTap: () {
          debugPrint("alarm");
          showSnackBar(context, "alarm");
        },
      ),
    ],
  );
}

Widget getSmartListView(BuildContext context) {
  var dataSource = getDataSource(10000);
  return ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(dataSource[index]),
      onTap: () {
        // pressButton(context, dataSource[index]);
        showSnackBar(context, dataSource[index]);
        debugPrint('${dataSource[index]} was tapped');
      },
      onLongPress: () {
        showBasicDialog(context, dataSource[index]);
      },
    );
  });
}

void showBasicDialog(BuildContext context, String title) {
  var alertDialog = AlertDialog(
    title: Text(title),
    content: Text('$title was held'),
  );
  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

void showRealBasicDialog(BuildContext context, String title) {
  var alertDialog = AlertDialog(
    title: Text(title),
    content: Text('Noder'),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

List<String> getDataSource(int dataAmount) {
  return List<String>.generate(dataAmount, (index) => "Item $index");
}

void showSnackBar(BuildContext context, String content) {
  var snackbar = SnackBar(
    content: Text(content),
  );
  Scaffold.of(context).showSnackBar(snackbar);
}
