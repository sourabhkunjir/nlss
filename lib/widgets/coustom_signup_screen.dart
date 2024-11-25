
import 'package:flutter/material.dart';
import '../themes/static_theme_management.dart';

class CustomLoginButton extends StatelessWidget {
  final bool isLoading;
  final String text;
  final VoidCallback onPressed;

  const CustomLoginButton({
    Key? key,
    required this.isLoading,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: isLoading ? Colors.grey : AppColors.kprimary,
          borderRadius: BorderRadius.circular(8), // Optional rounded corners
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(
                  color: AppColors.kinverseprimary,
                )
              : Text(
                  text,
                  style: AppTextStyles.title
                      .copyWith(color: AppColors.kinverseprimary),
                ),
        ),
      ),
    );
  }
}
