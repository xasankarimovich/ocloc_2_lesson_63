import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lesson_63/views/screens/clock_screen.dart';
import 'package:lesson_63/views/widgets/clock.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Clock',
      home: CustomClock(),
    );
  }
}
