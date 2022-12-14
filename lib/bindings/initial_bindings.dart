import 'package:flutter_study_app/controllers/controllers.dart';
import 'package:flutter_study_app/services/firebase_service.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    Get.put(FirebaseService());
  }
}
