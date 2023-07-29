import 'dart:developer';
import 'dart:io';
import 'package:driver_app/Local/modules/edit_profile/data/edit_profile_data.dart';
import 'package:driver_app/Local/modules/edit_profile/model/edit_profile_controller.dart';
import 'package:driver_app/Local/modules/profile/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../../Global/Core/Functions/handilingData.dart';
import '../../../../Global/Core/Functions/warningAuthDialog.dart';

class EditeProfileController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  EditProfileData profileData = EditProfileData(Get.find());
  final ImagePicker picker = ImagePicker();
  late ProfileModel profileModel;
  bool obscure = true;
  Box? authBox;
  File? image;
  final imagePicker = ImagePicker();

  uploadGaleryImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
      update();
    } else {}
  }

  uploadCameraImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      image = File(pickedImage.path);
      update();
    } else {}
  }

  changeObscure() {
    obscure = !obscure;
    update();
  }

  updateProfile() async {
    // var formData = formKey.currentState;
    // if (formData!.validate()) {
    // EditProfileModel editProfileModel = EditProfileModel(
    //   password: password.text,
    //   phone: phone.text,
    //   name: name.text,
    //   image: '',
    // );
    // statusRequest = StatusRequest.loading;
    // update();
    // var response = await profileData.updatProfile(editProfileModel);
    // statusRequest = handilingData(response);
    // print(response);
    // if (StatusRequest.success == statusRequest) {
    //   if (response['status'] == 'success') {
    Get.back();
    //   } else {
    //     warningAuthDialog('${response['message']}');
    //     statusRequest = StatusRequest.faliure;
    //   }
    // }
    // update();
    // }
  }

  @override
  void onInit() {
    // profileModel = Get.arguments["profileModel"];
    super.onInit();
  }
}
