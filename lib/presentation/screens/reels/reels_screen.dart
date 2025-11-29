import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:task/presentation/screens/home/home_controller/home_controller.dart';
import 'package:task/presentation/widgets/custom_nav_bar/custom_nav_bar.dart';

class ReelsScreen extends StatelessWidget {
  final int index;

  const ReelsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var homeController = Get.find<HomeController>();

    return Scaffold(
      bottomNavigationBar: CustomNavBar(selectedIndex: 1),
      body: SizedBox.expand(
        child: Image.asset(
          homeController.postdetails[index]["img"],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
