import 'package:driver_app/Global/Core/Class/HiveKeys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../Global/Core/Class/HiveBox.dart';
import '../../../../Global/Core/Services/services.dart';
import '../../../../Global/Core/Theme/Themes.dart';

class SettingsController extends GetxController {
  bool isDarkMode = false;
  bool enableNotification = false;
  Locale? language;
  bool? saveTheme;
  Services services = Get.find();
  Box? settingsBox = Hive.box(HiveBox.settingsBox);
  String? selectedLanguage;
  List<String> languageList = ['English', 'Arabic'];

  enableDarkMode(bool val) {
    isDarkMode = val;
    if (isDarkMode == false) {
      Get.changeTheme(Themes.lightsTheme);
    }

    if (isDarkMode == true) {
      Get.changeTheme(Themes.darkTheme);
    }
    settingsBox!.put(HiveKeys.darkModeKeY, isDarkMode);
    update();
  }

  changeLanguage(String val) {
    selectedLanguage = val;
    if (selectedLanguage == 'Arabic') {
      Locale locale = const Locale("ar");
      settingsBox!.put(HiveKeys.languageKeY, "ar");
      Get.updateLocale(locale);
    } else {
      Locale locale = const Locale("English");
      settingsBox!.put(HiveKeys.languageKeY, "English");
      Get.updateLocale(locale);
    }
    print("======================$selectedLanguage");
    update();
  }

  enableNotifications(bool val) {
    enableNotification = val;
    update();
  }

  @override
  void onInit() {
    var lang = settingsBox!.get(HiveKeys.languageKeY);
    if (lang == 'ar') {
      language = const Locale('ar');
      selectedLanguage = 'Arabic';
    } else if (lang == 'English') {
      language = const Locale('English');
      selectedLanguage = 'English';
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    settingsBox!.get(HiveKeys.darkModeKeY) != null
        ? saveTheme = settingsBox!.get(HiveKeys.darkModeKeY)
        : saveTheme = false;
    if (saveTheme != null) {
      isDarkMode = saveTheme!;
    }
    super.onInit();
  }
}
