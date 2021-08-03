import 'package:flutter/material.dart';

class DefaultProperties {
  late int permissions;
  late String password;
  late Icon image;
}

class UserDefaultProperties extends DefaultProperties {
  final permissions = 0;
  final password = "Aa123456!";
  final image = Icon(Icons.person);
}

class StudentDefaultProperties extends DefaultProperties {
  final permissions = 0;
  final password = "Aa123456!";
  final image = Icon(Icons.person);
}

class CommanderDefaultProperties extends DefaultProperties {
  final permissions = 0;
  final password = "commander123!";
  final image = Icon(Icons.title);
}

class MakasDefaultProperties extends DefaultProperties {
  final permissions = 0;
  final password = "makas123!";
  final image = Icon(Icons.title);
}

class MateDefaultProperties extends DefaultProperties {
  final permissions = 0;
  final password = "B15!";
  final image = Icon(Icons.family_restroom);
}

class AdminDefaultProperties extends DefaultProperties {
  final permissions = 0;
  final password = "ani or!";
  final image = Icon(Icons.admin_panel_settings);
}
