import 'package:exam_management/themes/static_theme_management.dart';
import 'package:exam_management/ui/admin_dashboard.dart';
import 'package:exam_management/widgets/coustom_container.dart';
import 'package:exam_management/widgets/coustom_textfield.dart';
import 'package:flutter/material.dart';

class AdminDetails extends StatelessWidget {
  const AdminDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Details"),
        backgroundColor: AppColors.kadmin,
        foregroundColor: AppColors.kinverseprimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              labelText: "username",
              hintText: "enter username",
              prefixIcon: Icons.person_2_outlined,
              obscureText: false,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              labelText: "Institute name",
              hintText: "enter here",
              prefixIcon: Icons.abc_sharp,
              obscureText: false,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              labelText: "Institute address",
              hintText: "enter here",
              prefixIcon: Icons.abc_sharp,
              obscureText: false,
            ),
            SizedBox(
              height: 30,
            ),
            CoustomContainer(
              width: width,
              finalwidth: 60,
              color: AppColors.kadmin,
              text: "Create account",
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => AdminDashboard(),
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
