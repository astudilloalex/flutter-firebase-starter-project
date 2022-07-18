import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_starter_project/src/app/app_binding.dart';
import 'package:flutter_firebase_starter_project/src/localization/app_localization.dart';
import 'package:flutter_firebase_starter_project/src/ui/routes/route_names.dart';
import 'package:flutter_firebase_starter_project/src/ui/routes/route_pages.dart';
import 'package:flutter_firebase_starter_project/src/ui/theme/app_theme_data.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: AppThemeData.dark,
      debugShowCheckedModeBanner: false,
      defaultTransition: kIsWeb ? Transition.noTransition : Transition.native,
      fallbackLocale: const Locale('en', 'US'),
      getPages: RoutePages.pages,
      initialBinding: const AppBinding(),
      initialRoute: RouteNames.splash,
      locale: Get.deviceLocale,
      theme: AppThemeData.light,
      translations: const AppLocalization(),
      unknownRoute: RoutePages.unknown,
    );
  }
}
