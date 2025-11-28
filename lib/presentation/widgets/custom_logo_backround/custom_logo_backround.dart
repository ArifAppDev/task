import 'package:flutter/cupertino.dart';

import 'package:task/core/custom_assets/custom_images/custom_images.dart';

import 'package:task/utils/app_colors/app_colors.dart';

class CustomLogoBackround extends StatelessWidget {
  const CustomLogoBackround({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(CustomImages.backround)),
      ),
      height: 233,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(CustomImages.topcurve),
          ),
          Positioned(
            bottom: -36,
            left: -20,
            child: Image.asset(CustomImages.elipseffour),
          ),
          Positioned(
            bottom: -32,
            left: -16,
            child: Image.asset(CustomImages.elipseffive),
          ),
          Positioned(
            bottom: 24,

            right: 216,

            child: Image.asset(CustomImages.elipsefseven),
          ),

          Positioned(
            bottom: 60,
            right: 170,

            child: Image.asset(CustomImages.elipsetseven),
          ),

          Positioned(
            bottom: 20,
            right: 6,

            child: Image.asset(CustomImages.elipsefsix),
          ),
          Positioned(
            bottom: 8,
            right: -10,

            child: Image.asset(CustomImages.elipsetwo),
          ),

          //================== brand logo ================
          Positioned(
            top: 80,
            left: MediaQuery.of(context).size.width / 4.2,

            child: Image.asset("assets/images/logo.png"),
          ),

          Positioned(
            top: 90,
            left: MediaQuery.of(context).size.width / 1.9,

            child: Text(
              "Learnova",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
