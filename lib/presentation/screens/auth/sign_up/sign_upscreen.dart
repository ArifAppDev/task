import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:task/core/routes/app_routes.dart';

import 'package:task/presentation/widgets/custom_logo_backround/custom_logo_backround.dart';
import 'package:task/presentation/widgets/custom_pass_textformfield.dart/cutom_pass_textformfield.dart';
import 'package:task/presentation/widgets/custom_textform_field.dart/custom_textform_field.dart';
import 'package:task/utils/app_colors/app_colors.dart';
import 'package:task/utils/static_strings/static_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            // ===================== custom logo backround ==============
            CustomLogoBackround(),
            SizedBox(height: 28),
            Text(
              StaticStrings.createAccount,
              style: TextStyle(
                fontSize: 22,
                color: AppColors.blacknormal,
                fontWeight: FontWeight.w600,
              ),
            ),

            // ============ tab bar =============
            Center(
              child: SizedBox(
                width: 200,
                child: TabBar(
                  indicatorColor: AppColors.bluetext,
                  labelColor: AppColors.bluetext,
                  unselectedLabelColor: AppColors.softgrey,
                  tabs: [
                    Tab(text: StaticStrings.student),
                    Tab(text: StaticStrings.teacher),
                  ],
                ),
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  // ===== Student Tab =====
                  SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          StaticStrings.name,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whitedark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomTextFormField(
                          hinttext: 'John Doe',
                          emailcontroller: TextEditingController(),
                        ),
                        SizedBox(height: 20),
                        Text(
                          StaticStrings.email,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whitedark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomTextFormField(
                          hinttext: 'JohnDoe@gmail.com',
                          emailcontroller: TextEditingController(),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          StaticStrings.password,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whitedark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        // =============== custom password text field =========
                        CustomPasswordTextField(
                          passwordcontroller: TextEditingController(),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          StaticStrings.confirmpass,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whitedark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),

                        // =============== custom password text field =========
                        CustomPasswordTextField(
                          passwordcontroller: TextEditingController(),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                StaticStrings.forgetpassword,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.lightblue,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              StaticStrings.alreadyaccuont,
                              style: TextStyle(
                                color: AppColors.darkgrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.toNamed(AppRoutes.signup);
                              },
                              child: Text(
                                StaticStrings.login,
                                style: TextStyle(
                                  color: AppColors.lightblue,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // ===== Teacher Tab =====
                  // ===== Student Tab =====
                  SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          StaticStrings.name,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whitedark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomTextFormField(
                          hinttext: 'John Doe',
                          emailcontroller: TextEditingController(),
                        ),
                        SizedBox(height: 20),
                        Text(
                          StaticStrings.email,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whitedark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomTextFormField(
                          hinttext: 'JohnDoe@gmail.com',
                          emailcontroller: TextEditingController(),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          StaticStrings.password,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whitedark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        // =============== custom password text field =========
                        CustomPasswordTextField(
                          passwordcontroller: TextEditingController(),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          StaticStrings.confirmpass,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whitedark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),

                        // =============== custom password text field =========
                        CustomPasswordTextField(
                          passwordcontroller: TextEditingController(),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                StaticStrings.forgetpassword,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.lightblue,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              StaticStrings.alreadyaccuont,
                              style: TextStyle(
                                color: AppColors.darkgrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.toNamed(AppRoutes.signup);
                              },
                              child: Text(
                                StaticStrings.login,
                                style: TextStyle(
                                  color: AppColors.lightblue,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
