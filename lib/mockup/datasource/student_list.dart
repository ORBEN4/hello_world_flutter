import 'package:flutter/material.dart';
import 'package:hello_world_flutter/mockup/defoult_properties.dart';

import '../classes.dart';
import '../const.dart';

var users = generateData(1000, Roles.STUDENT, "ma");

/// internal method, every time the method is called, it would generate one student
User getUser(int index, String courseNickname, String userType) {
  // debugPrint("student $index was created");
  if (userType == Roles.STUDENT)
    return Student('$courseNickname$index');
  else
    return User('$courseNickname$index',
        Properties.getPropertiesFromDefault(UserDefaultProperties()));
}

List<User> generateData(
    int usersAmount, String userType, String courseNickname) {
  users = List.generate(
      usersAmount, (index) => getUser(index, courseNickname, userType));
  return users;
}

List<User> geteData() {
  if (users == null) {
    return users;
  } else {
    throw new Exception("DataSource Was Not Initialized ");
  }
}
