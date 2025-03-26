import 'dart:ui';

import 'package:get/get.dart';

class HeaderController extends GetxController {
  var selectedLanguage = 'pt'.obs;

  void changeLanguage(String lang) {
    selectedLanguage.value = lang;
    Get.updateLocale(Locale(lang));
  }
}