import 'package:exam_management/ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExamManagementApp());
}

class ExamManagementApp extends StatelessWidget {
  const ExamManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exam Management System",
      home: SplashScreen(),
    );
  }
}
