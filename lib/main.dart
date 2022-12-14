import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/bindings/initial_bindings.dart';
import 'package:flutter_study_app/controllers/controllers.dart';
import 'package:flutter_study_app/firebase_options.dart';
import 'package:flutter_study_app/routes.dart';
import 'package:get/get.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  InitialBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Study App',
      theme: Get.find<ThemeController>().lightTheme,
      getPages: Routes.routes(),
    );
  }
}
