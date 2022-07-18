import 'package:flutter/material.dart';
import 'package:flutter_firebase_starter_project/src/app/services/auth_service.dart';
import 'package:flutter_firebase_starter_project/src/ui/routes/route_names.dart';
import 'package:get/get.dart';

/// Check if a user is authenticated before entering a route.
///
/// Redirect to sign in page if user is not authenticated.
class AuthMiddleware extends GetMiddleware {
  final AuthService _authService = Get.find<AuthService>();

  @override
  int? get priority => 0;

  @override
  RouteSettings? redirect(String? route) {
    return _authService.authenticated || route == RouteNames.signIn
        ? null
        : const RouteSettings(name: RouteNames.signIn);
  }
}
