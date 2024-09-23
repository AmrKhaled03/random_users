import 'package:get/get.dart';
import 'package:randomusers/constants/strings.dart';
import 'package:randomusers/models/api/api_services.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    ApiServices apiServices = ApiServices();
    apiServices.getUsers.then(
      (response) => Future.delayed(
        const Duration(
          seconds: 3,
        ),
        () => Get.offNamed(
          AppStrings.homeRoute,
          arguments: response,
        ),
      ),
    );
    super.onInit();
  }
}
