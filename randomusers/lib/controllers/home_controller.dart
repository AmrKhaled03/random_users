import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:randomusers/constants/extensions.dart';
import 'package:randomusers/models/user/users_model.dart';

class HomeController extends GetxController {
  List<UsersModel> users = [];
  bool isEmptyData = false;
  dynamic response = Get.arguments;

  void validateData() {
    if (response is List<UsersModel>) {
      if (response.isNotEmpty) {
        users = response;
      } else {
        isEmptyData = true;
      }
    } else {
      response.toString().showToast;
      debugPrint(response.toString());
      isEmptyData = true;
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    validateData();
  }
}
