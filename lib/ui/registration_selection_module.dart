import 'package:exam_management/themes/static_theme_management.dart';
import 'package:exam_management/ui/admin_details.dart';
import 'package:exam_management/ui/teacher_dashboard.dart';
import 'package:exam_management/ui/teacher_details.dart';
import 'package:flutter/material.dart';

import '../widgets/coustom_container.dart';

class RegistrationSelectionModule extends StatelessWidget {
  const RegistrationSelectionModule({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final finalwidth = width / 2 - 48;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CoustomContainer(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => AdminDetails(),
                  ),
                  (route) => false,
                );
              },
              width: width,
              finalwidth: finalwidth,
              color: AppColors.kadmin,
              text: "A D M I N",
            ),
            SizedBox(
              height: 20,
            ),
            CoustomContainer(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => TeacherDetails(),
                  ),
                  (route) => false,
                );
              },
              width: width,
              finalwidth: finalwidth,
              color: AppColors.kteacher,
              text: "T E A C H E R",
            ),
            SizedBox(
              height: 20,
            ),
            CoustomContainer(
              onTap: () {},
              width: width,
              finalwidth: finalwidth,
              color: AppColors.kstudent,
              text: "S T U D E N T",
            ),
          ],
        ),
      ),
    );
  }
}
