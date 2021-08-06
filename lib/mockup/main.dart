import 'package:flutter/material.dart';
import 'package:hello_world_flutter/mockup/resource_manager.dart';

import 'app.dart';

main() {
  runApp(App([m, initializer]));
}

void m() {
  void m1() {
    debugPrint("1");
  }

  void m2() {
    debugPrint("2");
  }

  void m3() {
    debugPrint("3");
  }

  void m4() {
    debugPrint("4");
  }

  void m5() {
    debugPrint("5");
  }

  void m6() {
    debugPrint("6");
  }

  m1();
  m2();
  m3();
  m4();
  m5();
  m6();
}

void initializer() {
  void initializeDB() {
    //TODO: create db and connect it
    debugPrint("DB is now active");
  }

  void initializeLogger() {
    //TODO: create db and connect it
    debugPrint("Logger is now active");
  }
  SemiYarnBitches.initialize();
  initializeDB();
  initializeLogger();
}
