import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_starter_project/src/app/app.dart';
import 'package:flutter_firebase_starter_project/src/app/firebase_options.dart';
import 'package:flutter_firebase_starter_project/src/app/services/auth_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initialize();
  runApp(const App());
}

Future<void> _initialize() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.options);
  await GetStorage.init();
  await Get.putAsync<AuthService>(
    () => AuthService().init(),
    permanent: true,
  );
}
