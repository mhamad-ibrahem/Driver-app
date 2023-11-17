import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/Images.dart';
import '../../controller/edit_profile_controller.dart';
import 'edit_bottom_sheet.dart';

class ProfilePhoto extends StatelessWidget {
  ProfilePhoto({super.key});
  final EditeProfileController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        controller.image == null
            ? const CircleAvatar(
                backgroundColor: AppColors.lPurple,
                backgroundImage: AssetImage(AppImages.profile2),
                maxRadius: 70,
              )
            : Container(
                height: 140.h,
                width: 140.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.file(controller.image!, fit: BoxFit.cover)),
              ),

        // CircleAvatar(
        //     backgroundColor: AppColors.primary,
        //     maxRadius: 70,
        //     child: ClipRRect(
        //         borderRadius: BorderRadius.circular(50),
        //         child: Image.file(controller.image!, fit: BoxFit.fill)),
        //   ),
        Positioned(
          bottom: 0.h,
          right: 0.w,
          child: GestureDetector(
            onTap: () {
              openEditBottomSheet(context, () {
                Get.back();
                controller.uploadGaleryImage();
              }, () {
                Get.back();
                controller.uploadCameraImage();
              });
            },
            child: Material(
              borderRadius: BorderRadius.circular(55),
              elevation: 5,
              child: const CircleAvatar(
                backgroundColor: GlobalColors.white,
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: AppColors.dPurple,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
