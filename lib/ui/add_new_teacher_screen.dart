import 'package:exam_management/themes/static_theme_management.dart';
import 'package:flutter/material.dart';
import '../widgets/coustom_container.dart';
import '../widgets/coustom_textfield.dart';


class AddNewTeacherScreen extends StatelessWidget {
  const AddNewTeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers to retrieve input values
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController subjectController = TextEditingController();

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Teacher"),
        backgroundColor: AppColors.kadmin,
        foregroundColor: AppColors.kinverseprimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Teacher Details",
              style: AppTextStyles.subtitle,
            ),
            const SizedBox(height: 16),
            // Name CustomTextField
            CustomTextField(
              labelText: "Name",
              hintText: "Enter teacher's name",
              prefixIcon: Icons.person,
            ),
            const SizedBox(height: 16),
            // Email CustomTextField
            CustomTextField(
              labelText: "Email",
              hintText: "Enter teacher's email",
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 16),
            // Phone Number CustomTextField
            CustomTextField(
              labelText: "Phone Number",
              hintText: "Enter teacher's phone number",
              prefixIcon: Icons.phone,
            ),
            const SizedBox(height: 16),
            // Subject Specialization CustomTextField
            CustomTextField(
              labelText: "Subject Specialization",
              hintText: "Enter subject specialization",
              prefixIcon: Icons.book,
            ),
            const SizedBox(height: 24),
            // Submit Button
            Center(
              child: CoustomContainer(
                width: width,
                finalwidth: 50,
                color: AppColors.kprimary,
                text: "Submit",
                onTap: () {
                  // Example: Print values to console
                  print("Name: ${nameController.text}");
                  print("Email: ${emailController.text}");
                  print("Phone: ${phoneController.text}");
                  print("Subject: ${subjectController.text}");

                  // Example Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Teacher added successfully!")),
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
