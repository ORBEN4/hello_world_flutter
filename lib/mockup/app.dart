import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'classes.dart';
import 'datasource/student_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Tamagochi",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tamagochi"),
        ),
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getSmartListView(context, users);
  }
}

Widget getSmartListView(BuildContext context, List<User> dataSource) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        leading: dataSource[index].getImage(),
        title: Text(dataSource[index].id),
        onTap: () {
          tap(context, dataSource[index].id);
        },
        onLongPress: () {
          longPress(context, dataSource[index].id);
        },
        trailing: IconButton(
          onPressed: () {
            onAddPress(context, dataSource[index].id);
          },
          icon: Icon(Icons.add),
        ),
      );
    },
    itemCount: dataSource.length,
  );
}

void tap(BuildContext context, String title) {
  showSnackBar(context, title);
  debugPrint('$title was tapped');
}

void longPress(BuildContext context, String title) {
  showBasicDialog(context, title);
  debugPrint('$title was long pressed');
}

void onAddPress(BuildContext context, String title) {
  showAdvancedDialog(context, title, '$title have a new grade');
  debugPrint('$title had a special button press');
}

void showSnackBar(BuildContext context, String content) {
  var snackbar = SnackBar(
    content: Text(content),
  );
  Scaffold.of(context).showSnackBar(snackbar);
}

void showBasicDialog(BuildContext context, String title) {
  var alertDialog = AlertDialog(
    title: Text(title),
    content: Text('$title was held'),
  );
  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

void showAdvancedDialog(BuildContext context, String title, String subTitle) {
  var alertDialog = AlertDialog(
    title: Text(title),
    content: Text(subTitle),
  );
  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
