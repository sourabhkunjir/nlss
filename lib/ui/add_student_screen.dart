import 'package:exam_management/themes/static_theme_management.dart';
import 'package:flutter/material.dart';

class AddStudentScreen extends StatelessWidget {
  const AddStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add teacher screen"),
        backgroundColor: AppColors.kadmin,
        foregroundColor: AppColors.kinverseprimary,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              width: width - 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.kadmin, width: 2)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text("Student Name", style: AppTextStyles.headline),
                  subtitle: Text(
                    "Class Name",
                    style: AppTextStyles.subtitle.copyWith(color: Colors.blue),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'removeButton', 
            child: Icon(Icons.remove),
            backgroundColor: Colors.red,
            foregroundColor: AppColors.kinverseprimary,
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: 'addButton', 
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
            foregroundColor: AppColors.kinverseprimary,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
