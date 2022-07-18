import 'package:flutter_firebase_starter_project/src/ui/pages/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {
  const SplashBinding();

  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
