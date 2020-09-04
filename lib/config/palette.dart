import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);

  static final Color online = Colors.lightGreen[300]; // Color(0xFF4BCB1F);

  static const LinearGradient topGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment(1.0, 1.5),
    colors: [
      const Color(0xFF6B3EFF),
      const Color(0xFF5058FF),
      const Color(0xFF00A2FF),
    ],
    tileMode: TileMode.clamp,
  );
}
