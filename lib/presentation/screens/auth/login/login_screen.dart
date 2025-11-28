import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:task/core/routes/app_routes.dart';
import 'package:task/presentation/widgets/custom_button/custom_button.dart';
import 'package:task/presentation/widgets/custom_button_google/custom_buttongoogle.dart';

import 'package:task/presentation/widgets/custom_logo_backround/custom_logo_backround.dart';
import 'package:task/presentation/widgets/custom_pass_textformfield.dart/cutom_pass_textformfield.dart';
import 'package:task/presentation/widgets/custom_textform_field.dart/custom_textform_field.dart';
import 'package:task/utils/app_colors/app_colors.dart';
import 'package:task/utils/static_strings/static_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var stuemailcontroller = TextEditingController();
    var stupasswordControlller = TextEditingController();
    var teaemailController = TextEditingController();
    var teapassController = TextEditingController();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            // ===================== custom logo backround ==============
            CustomLogoBackround(),
            SizedBox(height: 28),
            Text(
              StaticStrings.login,
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
                          emailcontroller: stuemailcontroller,
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
                        CustomPasswordTextField(
                          passwordcontroller: stupasswordControlller,
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
                        //========================== custom Button ==============
                        CustomButton(
                          title: StaticStrings.login,
                          onTap: () {
                            Get.toNamed(AppRoutes.formScreen);
                          },
                        ),

                        SizedBox(height: 16),
                        CustomButtongoogle(),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              StaticStrings.newtolenovora,
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
                                StaticStrings.createanaccount,
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

                  // ===== Teacher  Tab =====
                  SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                          emailcontroller: teaemailController,
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
                        CustomPasswordTextField(
                          passwordcontroller: teapassController,
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
                        //========================== custom Button ==============
                        CustomButton(
                          title: StaticStrings.login,
                          onTap: () {
                            Get.toNamed(AppRoutes.formScreen);
                          },
                        ),

                        SizedBox(height: 16),
                        CustomButtongoogle(),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              StaticStrings.newtolenovora,
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
                                StaticStrings.createanaccount,
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
