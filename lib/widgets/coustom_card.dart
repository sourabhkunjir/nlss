import 'package:flutter/material.dart';

import '../themes/static_theme_management.dart';

class CoustomCard extends StatelessWidget {
  const CoustomCard({
    super.key,
    required this.cardWidth,
    required this.text,
    required this.onTap, required this.totalNumber,
  });

  final double cardWidth;
  final String text;

  final void Function()? onTap;
  final String totalNumber;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: cardWidth,
        width: cardWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.kadmin, width: 2)),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(totalNumber,style: AppTextStyles.headline,),
            Text(
              text,
              style: AppTextStyles.title,
            ),
          ],
        )),
      ),
    );
  }
}
