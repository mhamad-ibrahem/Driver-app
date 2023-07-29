import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:driver_app/Local/modules/settings/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Global/Core/Constant/Colors.dart';

class Settings extends StatelessWidget {
  Settings({super.key});
  SettingsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
        // color: GlobalColors.white,
        pageTitle: "Settings",
        isBack: true,
        isScroll: true,
        ispadding: false,
        widget: GetBuilder<SettingsController>(
          builder: (controller) => Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SwitchListTile(
                  title: Text(
                    "Notifications",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  value: controller.enableNotification,
                  activeColor: AppColors.primary,
                  onChanged: (val) {
                    controller.enableNotifications(val);
                  }),
              const SizedBox(
                height: 5,
              ),
              SwitchListTile(
                  title: Text(
                    "Dark Mode".tr,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  value: controller.isDarkMode,
                  activeColor: AppColors.primary,
                  onChanged: (val) {
                    controller.enableDarkMode(val);
                  }),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: DropdownButton(
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: Icon(Icons.arrow_drop_down_rounded),
                    ),
                    isExpanded: true,
                    style: Theme.of(context).textTheme.headline4,
                    hint: Text(
                      controller.selectedLanguage == null
                          ? 'App Language'
                          : controller.selectedLanguage!,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    value: controller.selectedLanguage,
                    items: controller.languageList.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      );
                    }).toList(),
                    onChanged: (val) {
                      controller.changeLanguage(val!);
                    }),
              ),
            ],
          ),
        ));
  }
}
