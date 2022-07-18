import 'package:flutter_firebase_starter_project/src/ui/pages/unknown/unknown_controller.dart';
import 'package:get/get.dart';

class UnknownBinding implements Bindings {
  const UnknownBinding();

  @override
  void dependencies() {
    Get.lazyPut<UnknownController>(() => UnknownController());
  }
}
