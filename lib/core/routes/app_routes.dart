import 'package:get/get.dart';
import 'package:task/presentation/screens/auth/login/login_screen.dart';
import 'package:task/presentation/screens/auth/sign_up/sign_upscreen.dart';
import 'package:task/presentation/screens/form/form_screen.dart';
import 'package:task/presentation/screens/home/home_screen.dart';
import 'package:task/presentation/screens/learn/learn_screen.dart';
import 'package:task/presentation/screens/profile/profile_screen.dart';
import 'package:task/presentation/screens/quiz/quiz_screen.dart';

class AppRoutes {
  //=========================== login screen =========================
  static const String loginscreen = '/loginscreen';
  //=========================== login screen =========================
  static const String signup = '/signup';
  static const String formScreen = '/formScreen';
  static const String homeScreen = '/homeScreen';
  static const String reelsScreen = '/reelsScreen';
  static const String quizScreen = '/quizScreen';
  static const String profileScreen = '/profileScreen';
  static const String learnScreen = '/learnScreen';

  static List<GetPage> routes = [
    //=========================== login screen =========================
    GetPage(name: loginscreen, page: () => LoginScreen()),
    //=========================== login screen =========================
    GetPage(name: signup, page: () => SignUpScreen()),
    GetPage(name: formScreen, page: () => FormScreen()),
    //========================= home ==============
    GetPage(name: homeScreen, page: () => HomeScreen()),

    GetPage(name: quizScreen, page: () => QuizScreen()),
    GetPage(name: profileScreen, page: () => ProfileScreen()),
    GetPage(name: learnScreen, page: () => LearnScreen()),
  ];
}
