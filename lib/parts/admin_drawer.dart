import 'package:exam_management/ui/add_student_screen.dart';
import 'package:exam_management/ui/add_teacher_screen.dart';
import 'package:flutter/material.dart';

import '../ui/rank_screen.dart';
import '../ui/report_screen.dart';
import '../widgets/coustom_listtile.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Hello Admin !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          CustomListTile(
            icon: Icons.home,
            text: 'Dashboard',
            onTap: () {
              Navigator.pop(context); 
            },
          ),
          CustomListTile(
            icon: Icons.add_box,
            text: 'Add teacher',
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddTeacherScreen(),
                ),
              );
            },
          ),
          CustomListTile(
            icon: Icons.add_business,
            text: 'Add student',
            onTap: () {
              Navigator.pop(context); 

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddStudentScreen(),
                ),
              );
            },
          ),
          CustomListTile(
            icon: Icons.score_sharp,
            text: 'View Reports/Scores',
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ReportScreen(),
                ),
              );
            },
          ),
          CustomListTile(
            icon: Icons.sports_score_outlined,
            text: 'Ranks',
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RankScreen(),
                ),
              );
            },
          ),
          CustomListTile(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {
              Navigator.pop(context); 
            },
          ),
        ],
      ),
    );
  }
}
