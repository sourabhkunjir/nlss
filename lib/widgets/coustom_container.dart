import 'package:flutter/material.dart';

import '../themes/static_theme_management.dart';

class CoustomContainer extends StatelessWidget {
  const CoustomContainer({
    super.key,
    required this.width,
    required this.finalwidth,
    required this.color,
    required this.text,
     required this.onTap,
  });

  final double width;
  final double finalwidth;
  final Color color;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width - 48,
        height: finalwidth,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          text,
          style:
              AppTextStyles.headline.copyWith(color: AppColors.kinverseprimary),
        )),
      ),
    );
  }
}
