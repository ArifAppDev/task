import 'package:flutter/material.dart';
import 'package:task/utils/app_colors/app_colors.dart';

class CustomCatagoryButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CustomCatagoryButton({
    super.key,

    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 75,
        decoration: BoxDecoration(
          color: AppColors.boldtext,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.grey, width: 0.3),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: AppColors.blacknormal,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
