import 'package:get/get.dart';

class FormController extends GetxController {
  var selectedSchool = ''.obs;
  var selectedSubject = ''.obs;
  var selectedGrade = ''.obs;
  var selectedReferral = ''.obs;

  final schoolOptions = ['Diocesan Boys\' School', 'Other School'];
  final subjectOptions = ['Math', 'Science', 'English'];
  final gradeOptions = ['Primary 5', 'Primary 6', 'Secondary 1'];
  final referralOptions = ['Friends', 'Social Media', 'Advertisement'];
}
