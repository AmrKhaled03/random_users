import 'package:get/get.dart';
import 'package:randomusers/controllers/details_controller.dart';
import 'package:randomusers/controllers/home_controller.dart';
import 'package:randomusers/controllers/splash_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => DetailsController(), fenix: true);

  }
}
