import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/instance_manager.dart';
import 'package:task/core/general_controller/general_controller.dart';
import 'package:task/utils/app_colors/app_colors.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({super.key, required this.passwordcontroller});

  final TextEditingController passwordcontroller;

  @override
  Widget build(BuildContext context) {
    var generatcontroller = Get.find<GeneralController>();

    return Obx(
      () => TextFormField(
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return "Enter your email";
        //   } else if (!RegExp(
        //     StaticStrings.passwordpattern.toString(),
        //   ).hasMatch(value)) {
        //     return "Enter a valid Password";
        //   }
        //   return null;
        // },
        autovalidateMode: AutovalidateMode.onUserInteraction,

        controller: passwordcontroller,
        obscureText: generatcontroller.isSecure.value,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white,
          focusColor: AppColors.white,
          enabled: true,

          hintText: "Enter you password",
          suffixIcon: IconButton(
            onPressed: () {
              generatcontroller.isSecure.value =
                  !generatcontroller.isSecure.value;
            },
            icon: Icon(
              generatcontroller.isSecure.value
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.blueGrey,
            ),
          ),

          // when the text field is not focushed
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),

            borderSide: BorderSide(color: Colors.grey, width: 0.1),
          ),

          // when the text field is focushed
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Colors.grey, width: 0.1),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Colors.grey, width: 0.1),
          ),
        ),
      ),
    );
  }
}
