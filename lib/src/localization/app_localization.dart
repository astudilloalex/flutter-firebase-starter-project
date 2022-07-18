import 'package:flutter_firebase_starter_project/src/localization/languages/app_en_us.dart';
import 'package:flutter_firebase_starter_project/src/localization/languages/app_es_ec.dart';
import 'package:get/get.dart';

class AppLocalization implements Translations {
  const AppLocalization();

  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en_US': appEnUs,
      'es_EC': appEsEc,
    };
  }
}
