import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import 'package:task/presentation/screens/home/home_controller/home_controller.dart';
import 'package:task/presentation/screens/home/inner_widget/custom_app_bar.dart';
import 'package:task/presentation/screens/home/inner_widget/custom_catagory_button/custom_catagory_button.dart';
import 'package:task/presentation/screens/reels/reels_screen.dart';
import 'package:task/presentation/widgets/custom_nav_bar/custom_nav_bar.dart';

import 'package:task/utils/app_colors/app_colors.dart';
import 'package:task/utils/static_strings/static_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //============= home controller ===============
    var homeController = Get.find<HomeController>();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: CustomNavBar(selectedIndex: 0),
        backgroundColor: AppColors.white,
        // ===== Custom App Bar at the top =====
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80), // adjust height
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: CustomAppBar(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // ============ tab bar =============
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TabBar(
                    indicatorColor: AppColors.bluetext,
                    labelColor: AppColors.bluetext,
                    unselectedLabelColor: AppColors.softgrey,
                    tabs: [
                      Tab(text: StaticStrings.trendint),
                      Tab(text: StaticStrings.newtext),
                      Tab(text: StaticStrings.following),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.lightblue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      //================== 中文 ==================
                      CustomCatagoryButton(title: '中文', onTap: () {}),
                      //================== 中文 ==================
                      CustomCatagoryButton(title: 'English', onTap: () {}),
                      //================== 中文 ==================
                      CustomCatagoryButton(title: 'Maths', onTap: () {}),
                      //================== 中文 ==================
                      CustomCatagoryButton(title: 'Chemistry', onTap: () {}),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    // ===== trending Tab =====
                    Obx(
                      () => GridView.builder(
                        padding: const EdgeInsets.only(top: 10),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: homeController.postdetails.length,
                        itemBuilder: (context, index) {
                          final item = homeController.postdetails[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(ReelsScreen(index: index));
                                },
                                child: Container(
                                  height:
                                      180, // Fixed height for image + overlays
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(item['img']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      // Title Text
                                      Positioned(
                                        bottom: 40,
                                        left: 10,
                                        child: Text(
                                          item['title'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),

                                      // Avatar
                                      Positioned(
                                        bottom: 8,
                                        left: 10,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: NetworkImage(
                                            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D",
                                          ),
                                        ),
                                      ),

                                      // Instructor Name
                                      Positioned(
                                        bottom: 10,
                                        right: 36,
                                        child: Text(
                                          "Jessica Roy",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 6),
                            ],
                          );
                        },
                      ),
                    ),

                    // ===== new Tab =====
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),

                    // ===== following  Tab =====
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
