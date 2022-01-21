import 'package:flutter/material.dart';
import 'package:hello_world_flutter/qr_app/app.dart';

main() => runApp(getApp(2));

StatelessWidget getApp(int type){
  if (type == 1){
    return ScannerApp();
  }
  else if (type == 2){
    return CreatorApp();
  }
  else{
    throw new UnimplementedError();
  }
}