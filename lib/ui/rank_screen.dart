import 'package:exam_management/themes/static_theme_management.dart';
import 'package:flutter/material.dart';

class RankScreen extends StatelessWidget {
  const RankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Rank Screen"),
          backgroundColor: AppColors.kadmin,
          foregroundColor: AppColors.kinverseprimary,
          bottom: const TabBar(
            labelColor: AppColors.kinverseprimary,

            tabs: [
              Tab(text: "College-wise Ranks"),
              Tab(text: "Institute-wise Ranks"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CollegeRanksTab(),
            InstituteRanksTab(),
          ],
        ),
      ),
    );
  }
}

class CollegeRanksTab extends StatelessWidget {
  const CollegeRanksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "College-wise Ranks",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class InstituteRanksTab extends StatelessWidget {
  const InstituteRanksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Institute-wise Ranks",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
