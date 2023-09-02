import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  Rx<ThemeMode> themeMode = ThemeMode.system.obs;
  RxString themeModeString = 'System'.obs;

  void changeThemeMode() {
    if (themeMode.value == ThemeMode.system) {
      themeMode.value = ThemeMode.light;
      themeModeString.value = 'Light';
    } else if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
      themeModeString.value = 'Dark';
    } else {
      themeMode.value = ThemeMode.system;
      themeModeString.value = 'System';
    }
    Get.changeThemeMode(themeMode.value);
    update();
  }
}
