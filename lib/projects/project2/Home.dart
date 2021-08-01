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
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            // width: 200,
            // height: 100,
            //     margin: EdgeInsets.all(15.0),
            // margin: EdgeInsets.only(left: 10, top: 20, right: 30, bottom: 40),
            child: Column(
              children: <Widget>[
                Row(children: [
                  Expanded(
                      child: Text(
                    "one",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35,
                      fontFamily: widget.font.fontFamily,
                      fontWeight: widget.font.getRandomFont(),
                      // fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  )),
                  Expanded(
                    child: Text(
                      "two",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35,
                        fontFamily: widget.font.fontFamily,
                        fontWeight: widget.font.getRandomFont(),
                        // fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
                Row(children: [
                  Expanded(
                      child: Text(
                    "three",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35,
                      fontFamily: widget.font.fontFamily,
                      fontWeight: widget.font.getRandomFont(),
                      // fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  )),
                  Expanded(
                    child: Text(
                      "four",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35,
                        fontFamily: widget.font.fontFamily,
                        fontWeight: widget.font.getRandomFont(),
                        // fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
                // MyImage(),
                MyButton()
              ],
            )));
  }
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Image(
        height: 300.0,
        width: 300.0,
        image: AssetImage('resources/images/myIcon.png'),
      ),
    );
    // AssetImage assetImage = AssetImage("resources/images/myIcon.png");
    // Image image = Image(image: assetImage);
    // return Container(child: image);
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text("press me"),
        elevation: 6.0,
        onPressed: () => pressButton(context),
      ),
    );
  }

  void pressButton(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("this is my dialog"),
      content: Text("this is the content of the dialog"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
