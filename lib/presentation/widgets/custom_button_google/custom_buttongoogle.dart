import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task/utils/app_colors/app_colors.dart';
import 'package:task/utils/static_strings/static_strings.dart';

class CustomButtongoogle extends StatelessWidget {
  const CustomButtongoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey, width: 0.4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(CustomIcons.google),
          SizedBox(width: 30),
          Text(
            StaticStrings.loginwithGoogle,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
