import 'package:flutter/material.dart';
import 'package:task/utils/app_colors/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hinttext,
    required this.emailcontroller,
  });
  final String hinttext;
  final TextEditingController emailcontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return "Enter your email";
      //   } else if (!RegExp(
      //     StaticStrings.emailpattern.toString(),
      //   ).hasMatch(value)) {
      //     return "Enter a valid email address";
      //   } else {
      //     return null;
      //   }
      // },
      controller: emailcontroller,
      decoration: InputDecoration(
        fillColor: AppColors.white,
        filled: true,
        hintText: hinttext,
        enabled: true,

        // whenn the field is not focushed
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 0.1),
        ),

        // when the field is focushed
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 0.1),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 0.1),
        ),
      ),
    );
  }
}
