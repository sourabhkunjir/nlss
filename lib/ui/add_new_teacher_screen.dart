import 'package:exam_management/themes/static_theme_management.dart';
import 'package:flutter/material.dart';

class AddNewteacherScreen extends StatelessWidget {
  const AddNewteacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers to retrieve input values
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController subjectController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Teacher"),
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
            // Name TextField
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter teacher's name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Email TextField
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter teacher's email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Phone Number TextField
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter teacher's phone number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Subject Specialization TextField
            TextField(
              controller: subjectController,
              decoration: InputDecoration(
                labelText: "Subject Specialization",
                hintText: "Enter subject specialization",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            // Submit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Example: Print values to console
                  print("Name: ${nameController.text}");
                  print("Email: ${emailController.text}");
                  print("Phone: ${phoneController.text}");
                  print("Subject: ${subjectController.text}");

                  // You can implement further logic to save or submit the data
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Teacher added successfully!")),
                  );
                },
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
