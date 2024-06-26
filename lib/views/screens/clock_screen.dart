import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/clock.dart';
class CustomClock extends StatefulWidget {
  @override
  _CustomClockState createState() => _CustomClockState();
}

class _CustomClockState extends State<CustomClock> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 100), (_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final secondsAngle = (now.second / 60) * 2 * pi;
    final minutesAngle = (now.minute / 60) * 2 * pi;
    final hoursAngle = ((now.hour % 12) / 12) * 2 * pi;

    return Scaffold(
      backgroundColor: Color(0xFF1F1F28),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xFF00FFFF),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: CustomPaint(
                    painter: ClockPainter(
                      secondsAngle: secondsAngle,
                      minutesAngle: minutesAngle,
                      hoursAngle: hoursAngle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}