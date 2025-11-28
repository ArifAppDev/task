import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_nav_bar/custom_nav_bar.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(selectedIndex: 2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text("Quiz page"))],
      ),
    );
  }
}
