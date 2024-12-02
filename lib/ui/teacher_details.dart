import 'package:exam_management/themes/static_theme_management.dart';
import 'package:exam_management/ui/teacher_dashboard.dart';
import 'package:exam_management/widgets/coustom_container.dart';
import 'package:exam_management/widgets/coustom_textfield.dart';
import 'package:flutter/material.dart';

class TeacherDetails extends StatefulWidget {
  const TeacherDetails({super.key});

  @override
  State<TeacherDetails> createState() => _TeacherDetailsState();
}

class _TeacherDetailsState extends State<TeacherDetails> {
  String? selectedGrade;
  String? selectedStream;

  final List<String> grades = ["11", "12"];
  final List<String> streams = ["PCM", "PCB"];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Teacher Details"),
        backgroundColor: AppColors.kteacher,
        foregroundColor: AppColors.kinverseprimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              labelText: "Username",
              hintText: "Enter username",
              prefixIcon: Icons.person_2_outlined,
              obscureText: false,
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Select Grade",
                prefixIcon: Icon(Icons.school),
                border: OutlineInputBorder(),
              ),
              value: selectedGrade,
              items: grades.map((grade) {
                return DropdownMenuItem(
                  value: grade,
                  child: Text(grade),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedGrade = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Select Stream",
                prefixIcon: Icon(Icons.stream),
                border: OutlineInputBorder(),
              ),
              value: selectedStream,
              items: streams.map((stream) {
                return DropdownMenuItem(
                  value: stream,
                  child: Text(stream),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedStream = value;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            CoustomContainer(
              width: width,
              finalwidth: 60,
              color: AppColors.kteacher,
              text: "Create Account",
              onTap: () {

                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => TeacherDashboard(),
                    ),
                    (route) => false,
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
