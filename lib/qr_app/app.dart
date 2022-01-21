import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      // TODO: implement build
      MaterialApp(
        /*
        appBar: AppBar(
          title: Text("generate qr code"),
        ),*/
        home: Scaffold(
          appBar: AppBar(
            title: Text("qr thingi"),
          ),
          body: Center(
            child: QrImage(
              data: "this is my qr",
              // version: QrVersions.auto,
              // size: 200.0,
              // backgroundColor: Colors.green,
            ),
          ),
        ),
      );
}

class ScannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      // TODO: implement build
      // SafeArea(
      /*child:*/ Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // buildQrCode(context),
          ],
        ),
        // )
      );

  // Widget buildQrCode(BuildContext context) {}

  void documentScan(String code) {
    debugPrint("this is the message you sent: " + code);
  }
}
