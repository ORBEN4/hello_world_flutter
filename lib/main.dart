import 'package:flutter/material.dart';

import 'projects/built_in/body.dart';
import 'projects/project1/body.dart';
import 'projects/project2/body.dart';
import 'projects/project2/Home.dart';


void main() => runApp(getApp(2.1));

StatelessWidget getApp(double version){
  if(version == 0)
    return BuiltInBody();
  else if(version == 1)
    return Project1Body();
  else if(version == 2)
    return Project2Body();
  else if(version ==2.1)
    return Project2_1Body();
  else
    throw UnimplementedError();
}