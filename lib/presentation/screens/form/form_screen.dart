import 'package:flutter/material.dart';

import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';
import 'package:task/core/custom_assets/custom_images/custom_images.dart';
import 'package:task/core/routes/app_routes.dart';
import 'package:task/presentation/screens/form/form_controller/form_controller.dart';
import 'package:task/presentation/widgets/custom_button/custom_button.dart';
import 'package:task/utils/app_colors/app_colors.dart';
import 'package:task/utils/static_strings/static_strings.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FormController());

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          // ========== Bottom Decorative Screen ==========
          Positioned.fill(
            child: Container(
              color: AppColors.lightgrey.withValues(alpha: 51), // 20% opacity

              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  CustomImages.containerbackround,
                ), // optional background
              ),
            ),
          ),

          // ========== Centered Card ==========
          Center(
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 24,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StaticStrings.personalizing,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blacknormal,
                        ),
                      ),
                      const SizedBox(height: 24),
                      buildDropdown(
                        'Current School',
                        controller.schoolOptions,
                        controller.selectedSchool,
                      ),
                      const SizedBox(height: 16),
                      buildDropdown(
                        'Elective Subject',
                        controller.subjectOptions,
                        controller.selectedSubject,
                      ),
                      const SizedBox(height: 16),
                      buildDropdown(
                        'Current Grade',
                        controller.gradeOptions,
                        controller.selectedGrade,
                      ),
                      const SizedBox(height: 16),
                      buildDropdown(
                        'How Did You Hear About Us?',
                        controller.referralOptions,
                        controller.selectedReferral,
                      ),
                      const SizedBox(height: 32),
                      CustomButton(
                        title: StaticStrings.getStarted,
                        onTap: () {
                          Get.toNamed(AppRoutes.homeScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDropdown(String label, List<String> items, RxString value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.blacknormal,
          ),
        ),
        const SizedBox(height: 8),
        Obx(
          () => DropdownButtonFormField<String>(
            initialValue: value.value.isEmpty ? null : value.value,
            items: items
                .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                .toList(),
            onChanged: (val) => value.value = val ?? '',
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.lightgrey.withValues(alpha: 51),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
