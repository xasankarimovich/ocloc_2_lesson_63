
import 'dart:math';

import 'package:flutter/material.dart';
class ClockPainter extends CustomPainter {
  final double secondsAngle;
  final double minutesAngle;
  final double hoursAngle;

  ClockPainter({
    required this.secondsAngle,
    required this.minutesAngle,
    required this.hoursAngle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // birinchi dumaloq
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2 - 30;
    // bu esa soatni rangi
    final facePaint = Paint()
      ..color = Color(0xFF1F1F28)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, facePaint);

// soatni qullarini chizish uchun qalam
    final secondHandPaint = Paint()
      ..color = Color(0xFFFFCBC3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawLine(
      center,
      center.translate(radius * 0.8 * cos(secondsAngle), radius * 0.8 * sin(secondsAngle)),
      secondHandPaint,
    );

    final minuteHandPaint = Paint()
      ..color = Color(0xFFFFCBC3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;
    canvas.drawLine(
      center,
      center.translate(radius * 0.6 * cos(minutesAngle), radius * 0.6 * sin(minutesAngle)),
      minuteHandPaint,
    );

    final hourHandPaint = Paint()
      ..color = Color(0xFFFFCBC3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;
    canvas.drawLine(
      center,
      center.translate(radius * 0.4 * cos(hoursAngle), radius * 0.4 * sin(hoursAngle)),
      hourHandPaint,
    );

    final accentPaint = Paint()
      ..color = Color(0xFF00FFFF)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, 10, accentPaint);
  }

  @override
  bool shouldRepaint(ClockPainter oldDelegate) {
    return oldDelegate.secondsAngle != secondsAngle ||
        oldDelegate.minutesAngle != minutesAngle ||
        oldDelegate.hoursAngle != hoursAngle;
  }
}