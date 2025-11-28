import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task/utils/app_colors/app_colors.dart';
import 'package:task/utils/static_strings/static_strings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(color: AppColors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StaticStrings.learnthrough,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            SvgPicture.asset(CustomIcons.search),
          ],
        ),
      ),
    );
  }
}
