import 'package:get/instance_manager.dart';
import 'package:task/core/general_controller/general_controller.dart';
import 'package:task/presentation/screens/form/form_controller/form_controller.dart';
import 'package:task/presentation/screens/home/home_controller/home_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneralController>(() => GeneralController());
    Get.lazyPut<FormController>(() => FormController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
