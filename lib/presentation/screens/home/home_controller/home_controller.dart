import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:task/core/custom_assets/custom_images/custom_images.dart';
import 'package:task/presentation/screens/home/home_screen.dart';
import 'package:task/presentation/screens/learn/learn_screen.dart';
import 'package:task/presentation/screens/profile/profile_screen.dart';
import 'package:task/presentation/screens/quiz/quiz_screen.dart';
import 'package:task/presentation/screens/reels/reels_screen.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxList<Map<String, dynamic>> postdetails = [
    {'img': CustomImages.postone, 'title': 'Vocabulary 101'},
    {'img': CustomImages.postwo, 'title': 'English Listening'},

    {'img': CustomImages.posthree, 'title': 'Trigonometry Basic'},

    {'img': CustomImages.postfour, 'title': 'TGeometry Advance'},

    {'img': CustomImages.postfive, 'title': 'English Listening'},
    {'img': CustomImages.postsix, 'title': 'Geometry Advance'},
  ].obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }

  // =============list of screens ============
  final List<Widget> screens = [
    HomeScreen(),
    ReelsScreen(index: 0, accountName: 'Jessica Roy'),
    QuizScreen(),
    LearnScreen(),
    ProfileScreen(),
  ];
}
