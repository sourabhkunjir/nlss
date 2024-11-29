import 'package:exam_management/themes/static_theme_management.dart';
import 'package:flutter/material.dart';
import '../widgets/coustom_container.dart';
import '../widgets/coustom_textfield.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data (replace with actual user profile data)
    String name = "John Doe";
    String email = "john.doe@example.com";
    String phone = "1234567890";
    String role = "Admin";

    // Dialog function to edit profile details
    void showEditDialog(BuildContext context, String fieldName, String initialValue, Function(String) onSave) {
      final TextEditingController controller = TextEditingController(text: initialValue);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit $fieldName"),
            content: CustomTextField(
              labelText: fieldName,
              hintText: "Enter your $fieldName",
              prefixIcon: Icons.edit,
              obscureText: false,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  onSave(controller.text);
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("$fieldName updated successfully!")),
                  );
                },
                child: const Text("Save"),
              ),
            ],
          );
        },
      );
    }

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Detail Screen"),
        backgroundColor: AppColors.kadmin,
        foregroundColor: AppColors.kinverseprimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Profile Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Name Field with Edit Option
            ListTile(
              title: const Text("Name"),
              subtitle: Text(name),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  showEditDialog(context, "Name", name, (value) {
                    name = value;
                  });
                },
              ),
            ),
            const Divider(),
            // Email Field with Edit Option
            ListTile(
              title: const Text("Email"),
              subtitle: Text(email),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  showEditDialog(context, "Email", email, (value) {
                    email = value;
                  });
                },
              ),
            ),
            const Divider(),
            // Phone Number Field with Edit Option
            ListTile(
              title: const Text("Phone Number"),
              subtitle: Text(phone),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  showEditDialog(context, "Phone Number", phone, (value) {
                    phone = value;
                  });
                },
              ),
            ),
            const Divider(),
            // Role Field with Edit Option
            ListTile(
              title: const Text("Role"),
              subtitle: Text(role),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  showEditDialog(context, "Role", role, (value) {
                    role = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 24),
            // Save Button
            Center(
              child: CoustomContainer(
                width: width,
                finalwidth: 50,
                color: AppColors.kprimary,
                text: "Save All Changes",
                onTap: () {
                  // Save profile changes logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("All profile changes saved successfully!"),
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
