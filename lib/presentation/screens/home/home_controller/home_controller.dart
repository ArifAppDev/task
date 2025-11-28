import 'package:get/state_manager.dart';
import 'package:task/core/custom_assets/custom_images/custom_images.dart';

class HomeController extends GetxController {
  RxList<Map<String, dynamic>> postdetails = [
    {'img': CustomImages.postone, 'title': 'Vocabulary 101'},
    {'img': CustomImages.postwo, 'title': 'English Listening'},

    {'img': CustomImages.posthree, 'title': 'Trigonometry Basic'},

    {'img': CustomImages.postfour, 'title': 'TGeometry Advance'},

    {'img': CustomImages.postfive, 'title': 'English Listening'},
    {'img': CustomImages.postsix, 'title': 'Geometry Advance'},
  ].obs;
}
