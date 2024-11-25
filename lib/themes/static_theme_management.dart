import 'package:flutter/material.dart';

// Static color constants
class AppColors {
  static const Color ksurface = Colors.black;
  static const Color kprimary = Colors.blueAccent;
  static const Color ksecondary = Colors.lightBlue;
  static const Color kinverseprimary = Colors.white;
  static const Color kadmin = Colors.blueAccent;
  static const Color kteacher = Colors.redAccent;
  static const Color kstudent = Colors.orangeAccent;
}

// static Textstyles constants
class AppTextStyles {
  static const TextStyle headline = TextStyle(
    fontFamily: "pb",
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.ksurface,
  );

  static const TextStyle title = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.kprimary,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.ksecondary,
  );

  static const TextStyle description = TextStyle(
    fontFamily: "pr",
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.ksurface,
  );
}
