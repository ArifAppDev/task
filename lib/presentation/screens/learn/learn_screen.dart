import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_nav_bar/custom_nav_bar.dart'
    show CustomNavBar;

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(selectedIndex: 3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text("learn page"))],
      ),
    );
  }
}
