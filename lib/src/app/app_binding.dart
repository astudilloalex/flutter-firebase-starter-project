import 'package:flutter_firebase_starter_project/src/app/controllers/app_controller.dart';
import 'package:flutter_firebase_starter_project/src/app/controllers/auth_controller.dart';
import 'package:flutter_firebase_starter_project/src/app/services/auth_service.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  const AppBinding();
  @override
  void dependencies() {
    Get.put<AuthController>(
      AuthController(authService: Get.find<AuthService>()),
      permanent: true,
    );
    Get.put<AppController>(AppController(), permanent: true);
  }
}
