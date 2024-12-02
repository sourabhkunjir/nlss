import 'package:exam_management/themes/static_theme_management.dart';
import 'package:flutter/material.dart';
import '../ui/rank_screen.dart';
import '../ui/report_screen.dart';
import '../widgets/coustom_listtile.dart';

class TeacherDrawer extends StatelessWidget {
  const TeacherDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.kteacher
            ),
            child: Text(
              'Hello Teacher!',
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
            icon: Icons.create,
            text: 'Set Exam',
            onTap: () {
              Navigator.pop(context);

              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => SetExamScreen(),
              //   ),
              // );
            },
          ),
          CustomListTile(
            icon: Icons.score_sharp,
            text: 'View Reports',
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
