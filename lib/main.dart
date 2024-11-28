import 'package:flutter/material.dart';

import 'ui/registration_selection_module.dart';

void main() {
  runApp(ExamManagementApp());
}

class ExamManagementApp extends StatelessWidget {
  const ExamManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exam Management System",
      home: RegistrationSelectionModule(),
    );
  }
}


