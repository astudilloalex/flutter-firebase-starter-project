import 'package:flutter_firebase_starter_project/src/ui/pages/sign_in/sign_in_controller.dart';
import 'package:get/get.dart';

class SignInBinding implements Bindings {
  const SignInBinding();

  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
