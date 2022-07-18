import 'package:flutter_firebase_starter_project/src/app/middlewares/auth_middleware.dart';
import 'package:flutter_firebase_starter_project/src/ui/pages/pages.dart';
import 'package:flutter_firebase_starter_project/src/ui/routes/route_names.dart';
import 'package:get/get.dart';

/// Manage the available pages in the app.
class RoutePages {
  const RoutePages._();

  /// Contains all pages to use in the app.
  static List<GetPage<dynamic>> get pages {
    // Remove the middlewares if you don't need.
    return [
      GetPage(
        name: RouteNames.home,
        page: () => const HomePage(),
        binding: const HomeBinding(),
        middlewares: [
          AuthMiddleware(),
        ],
      ),
      GetPage(
        name: RouteNames.signIn,
        page: () => const SignInPage(),
        binding: const SignInBinding(),
      ),
      GetPage(
        name: RouteNames.splash,
        page: () => const SplashPage(),
        binding: const SplashBinding(),
      ),
    ];
  }

  /// Page to show if return 404 error, or when page do not exist.
  static GetPage<dynamic> get unknown {
    return GetPage(
      name: RouteNames.unknown,
      page: () => const UnknownPage(),
      binding: const UnknownBinding(),
    );
  }
}
