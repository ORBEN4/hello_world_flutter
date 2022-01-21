import 'package:flutter/material.dart';

import 'learning_projects/built_in/body.dart';
import 'learning_projects/project1/body.dart';
import 'learning_projects/project2/body.dart';

void main() => runApp(getApp(0));

StatelessWidget getApp(var version) {
  if (version == 0)
    return BuiltInBody();
  else if (version == 1)
    return Project1Body();
  else if (version == 2)
    return Project2Body();
  else if (version == 2.1)
    return Project2_1Body();
  else if (version == 2.2)
    return Project2_2Body();
  else
    throw UnimplementedError();
}
