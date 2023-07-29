import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Global/Core/Binding/Bindings.dart';
import 'Global/Core/Services/services.dart';
import 'Global/Core/Theme/Themes.dart';
import 'Global/Core/localization/localization.dart';
import 'Local/Core/Constant/Routes.dart';
import 'Local/modules/settings/controller/settings_controller.dart';
import 'Routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final SettingsController settingsController = Get.put(SettingsController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: settingsController.saveTheme == false
              ? Themes.lightsTheme
              : Themes.darkTheme,
          initialRoute: AppRoute.welcom,
          locale: settingsController.language,
          translations: Localization(),
          getPages: routes,
          initialBinding: MyBindings(),
        );
      },
    );
  }
}

//AIzaSyAapiKS50iy0w9xQ0oJlkP0bHqnDTyOzJ4