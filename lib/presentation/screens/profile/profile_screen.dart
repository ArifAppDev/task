import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_nav_bar/custom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(selectedIndex: 4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text("Profile page"))],
      ),
    );
  }
}
