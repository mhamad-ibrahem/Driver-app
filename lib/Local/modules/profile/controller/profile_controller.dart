import 'package:driver_app/Global/Core/Class/StatusRequest.dart';
import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:driver_app/Local/modules/profile/data/profile_data.dart';
import 'package:driver_app/Local/modules/profile/model/profile_model.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../Global/Core/Class/HiveBox.dart';
import '../../../../Global/Core/Functions/handilingData.dart';

class ProfileController extends GetxController {
  late ProfileModel profileModel;
  StatusRequest statusRequest = StatusRequest.none;
  ProfileData profileData = ProfileData(Get.find());
  late Box settingsBox;
  @override
  void onInit() {
    // getData();
    super.onInit();
  }

  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await profileData.getProfileData();
    statusRequest = handilingData(response);
    print(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        profileModel = ProfileModel.fromJson(response['data']);
      } else {
        statusRequest = StatusRequest.faliure;
      }
    }
    update();
  }

  goToEditProfile() {
    Get.toNamed(
      AppRoute.editeProfile,
      // arguments: {"profileModel": profileModel}
    );
  }

  goToSettings() {
    Get.toNamed(AppRoute.settings);
  }

  goToHelpCenter() {
    Get.toNamed(AppRoute.helpCenter);
  }

  logOut() {
    Get.offAllNamed(AppRoute.signIn);
  }
}
