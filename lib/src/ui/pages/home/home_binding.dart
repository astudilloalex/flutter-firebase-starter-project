import 'package:flutter_firebase_starter_project/src/ui/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  const HomeBinding();

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
