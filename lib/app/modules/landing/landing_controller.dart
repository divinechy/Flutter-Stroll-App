import 'package:get/get.dart';

class LandingController extends GetxController {
  var selectedOption = 'D'.obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }
}
