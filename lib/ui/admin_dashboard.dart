import 'package:exam_management/themes/static_theme_management.dart';
import 'package:exam_management/ui/profile_detail_screen.dart';
import 'package:exam_management/widgets/coustom_card.dart';
import 'package:flutter/material.dart';

import '../parts/admin_drawer.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final cardWidth = (width / 2) - 16;
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard"),
        backgroundColor: AppColors.kadmin,
        foregroundColor: AppColors.kinverseprimary,
        actions: [
          IconButton(
            onPressed: () {
              // implement profile logic here
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfileDetailsScreen(),
              ));
            },
            icon: Icon(Icons.person_4_outlined),
          ),
        ],
      ),
      drawer: AdminDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 10.0),
              child: Container(
                width: width - 22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.kadmin, width: 2)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text("Institute name : ",
                        style: AppTextStyles.headline),
                    subtitle: Text(
                      "Institute address ",
                      style:
                          AppTextStyles.subtitle.copyWith(color: Colors.blue),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CoustomCard(
                  cardWidth: cardWidth,
                  text: "Total Teacher",
                  totalNumber: "20",
                  onTap: () {},
                ),
                CoustomCard(
                  cardWidth: cardWidth,
                  text: "Total Student",
                  totalNumber: "40",
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CoustomCard(
                  cardWidth: cardWidth,
                  text: "Total Exams",
                  totalNumber: "50",
                  onTap: () {},
                ),
                CoustomCard(
                  cardWidth: cardWidth,
                  text: "Upcoming Exams",
                  totalNumber: "60",
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CoustomCard(
                  cardWidth: cardWidth,
                  text: "Upcoming Events",
                  totalNumber: "80",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
