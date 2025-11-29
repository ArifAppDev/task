import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:task/presentation/screens/home/home_controller/home_controller.dart';

class ReelsScreen extends StatelessWidget {
  final int index;

  final String accountName;

  const ReelsScreen({
    super.key,
    required this.index,

    required this.accountName,
  });

  @override
  Widget build(BuildContext context) {
    var homeController = Get.find<HomeController>();

    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          homeController.postdetails[index]["img"],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
