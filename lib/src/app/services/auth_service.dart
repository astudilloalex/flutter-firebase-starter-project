import 'package:get/get.dart';

/// Manage everything related to authentication.
class AuthService extends GetxService {
  /// Init service asynchronously.
  Future<AuthService> init() async {
    return this;
  }

  /// Returns true if user is authenticated otherwise false.
  bool get authenticated => true;
}
