import 'package:get/get.dart';

class LandingController extends GetxController {
  var selectedOption = ''.obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }
}
