import 'package:flutter/material.dart';
import 'package:project_getx_mvc_mvvm/Rosources/app_colors.dart';

class RoundButton extends StatelessWidget {
  final bool loading;
  final String title;
  final VoidCallback onPress;
  final double height, width;
  final Color textColor, buttonColor;
  const RoundButton({
    super.key,
    this.buttonColor = AppColors.primaryButtonColor,
    this.textColor = AppColors.primaryTextColor,
    required this.title,
    required this.onPress,
    this.loading = false,
    this.height = 50,
    this.width = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: loading
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: AppColors.white),
                ),
              ),
            ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: buttonColor,
      ),
    );
  }
}
