import 'package:hello_world_flutter/mockup/const.dart';

import '/mockup/datasource/db_manager.dart';

class SemiYarnBitches {
  static late final SemiYarnBitches instance;
  static late DBManager dbManager;

  /// do not use this method
  SemiYarnBitches() {
    dbManager = DBManager.getInstance();
  }
  static void initialize(){
    dbManager = DBManager.getInstance();
  }
  SemiYarnBitches getInstance(){
    return instance;
  }
}
