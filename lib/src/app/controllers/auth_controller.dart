import 'package:flutter_firebase_starter_project/src/app/services/auth_service.dart';
import 'package:get/get.dart';

/// Use to manage the current authentication.
class AuthController extends GetxController {
  AuthController({
    required this.authService,
  });

  final AuthService authService;

  // Example check if authenticated.
  //
  // Don't use reactive variables for best performance, because is a permanent
  // controller.
  //
  // This reduce performance:
  // final _authenticate = false.obs;
  // final RxBool _authenticated = RxBool(false);
  bool _authenticated = false;

  // Update UI using GetBuilder call update() method.
  set authenticated(final bool authenticated) {
    _authenticated = authenticated;
    update();
  }

  bool get authenticated => _authenticated;
}
