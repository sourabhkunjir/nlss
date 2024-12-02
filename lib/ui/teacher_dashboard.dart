import 'package:exam_management/themes/static_theme_management.dart';
import 'package:flutter/material.dart';

import '../parts/teacher_drawer.dart';

class TeacherDashboard extends StatelessWidget {
  const TeacherDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> upcomingExams = [
      {"subject": "Mathematics", "date": "2024-12-10"},
      {"subject": "Physics", "date": "2024-12-12"},
      {"subject": "Chemistry", "date": "2024-12-14"},
      {"subject": "Biology", "date": "2024-12-16"},
    ];

    // Total students count
    final int totalStudents = 120;

    return Scaffold(
      appBar: AppBar(
        title: Text("Teacher Dashboard"),
        backgroundColor: AppColors.kteacher,
        foregroundColor: AppColors.kinverseprimary,
      ),
       drawer: TeacherDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total Students Count
            Card(
              color: AppColors.kteacher,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Students",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kinverseprimary,
                      ),
                    ),
                    Text(
                      totalStudents.toString(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color:  AppColors.kinverseprimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Upcoming Exams",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: upcomingExams.length,
                itemBuilder: (context, index) {
                  final exam = upcomingExams[index];
                  return Card(
                    elevation: 2.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColors.kteacher,
                        child: Text(
                          exam['subject']![0],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        exam['subject']!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Exam Date: ${exam['date']}"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                      onTap: () {
                      
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
