import 'package:flutter/material.dart';
import 'package:live_test/module13_assignment.dart';

import 'live_test_screen.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext contex){
    return MaterialApp(
      title: 'Live Test',
      home: CourseInfo(),
    );
  }

}