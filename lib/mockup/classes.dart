import 'dart:collection';

import 'package:flutter/material.dart';

import 'defoult_properties.dart';

class User {
  final String id;
  Properties properties;


  User(this.id, this.properties);

  String getPassword() {
    return this.properties.password;
  }

  int getPermissions() {
    return this.properties.permissions;
  }

  dynamic getImage() {
    return this.properties.image;
  }
// final int permissions;
// final String password;
// var image;
//

// User(this.id,
//     {this.password = T.password,
//     this.permissions = UserDefaultProperties.permissions,
//     this.image = UserDefaultProperties.image}){
}


class Student extends User {
  List<Grade> grades = new List.empty();

  Student(String id) : super(id, Properties.getPropertiesFromDefault(StudentDefaultProperties()));
}

class Grade {
  DateTime dateTime = DateTime.now();
  String subject;
  int grade;

  Grade(this.subject, this.grade);
}

class Properties {
  int permissions;
  String password;
  var image;

  static Properties getPropertiesFromDefault(DefaultProperties defaultProperties) {
    return new Properties(
        defaultProperties.permissions, defaultProperties.password,
        defaultProperties.image);
  }

  Properties(this.permissions, this.password, this.image);

  // Properties.createNew(this.permissions, this.password, this.image);

}