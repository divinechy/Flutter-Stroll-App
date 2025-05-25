import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:stroll_app/app/data/models/user.dart';
import 'package:stroll_app/app/data/repositories/user_repository.dart';

class LandingController extends GetxController {
  final UserRepository _repository = UserRepository();

  var currentUser = Rxn<User>();
  var users = <User>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  var selectedOption = 'D'.obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  Future<void> loadData() async {
    try {
      isLoading.value = true;

      final fetchedUser = await _repository.fetchCurrentUser();
      final fetchedUsers = await _repository.fetchUsers();

      currentUser.value = fetchedUser;
      users.value = fetchedUsers;
    } catch (e) {
      if (kDebugMode) {
        print("Error loading data: $e");
      }
    } finally {
      isLoading.value = false;
    }
  }
}
