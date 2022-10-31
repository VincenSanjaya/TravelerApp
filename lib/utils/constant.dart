import 'dart:ui';
import 'package:flutter/material.dart';

Color primary = const Color(0xFFF2AD54);

class Styles {
  static Color primaryColor = primary;
  static Color white = const Color(0xFFFAF9F8);
  static Color grey = const Color(0xFFC8C4BB);
  static Color black = const Color(0xFF141419);
  static Color brown = const Color(0xFF4C454B);
  static Color darkPrimary = const Color(0xFFBE9256);
  static Color darkerPrimary = const Color(0xFFB0743E);


  static TextStyle textStyle = TextStyle(fontSize: 16, color: black, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle = TextStyle(fontSize: 26, color: black, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 = TextStyle(fontSize: 21, color: black, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 = TextStyle(fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}