import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Local/modules/edit_profile/controller/edit_profile_controller.dart';
import 'package:driver_app/Local/modules/edit_profile/view/custom/edit_form.dart';
import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:driver_app/Local/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Constant/Size.dart';
import '../../../Core/Constant/Images.dart';
import 'custom/profile_photo.dart';

class EditeProfile extends StatelessWidget {
  EditeProfile({super.key});
  final EditeProfileController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: AppSize.screenHight,
          width: AppSize.screenWidth,
          child: Image.asset(
            AppImages.backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        CustomAppScaffold(
            color: Colors.transparent,
            pageTitle: "Edite Profile",
            isBack: true,
            isScroll: false,
            ispadding: false,
            widget: GetBuilder<EditeProfileController>(
                builder: (controller) => HandlingDataRequest(
                    statusRequest: controller.statusRequest,
                    child: Stack(
                      children: [
                        Column(children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: AppSize.screenHight * 0.2,
                            ),
                          ),
                          Expanded(
                              flex: 8,
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                width: AppSize.screenWidth,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(35)),
                                ),
                                child: SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 70,
                                        ),
                                        EditForm(),
                                        SizedBox(
                                          height: 70.h,
                                        ),
                                      ]),
                                ),
                              )),
                        ]),
                        Positioned(
                            top: 0.h, left: 120.w, child: ProfilePhoto()),
                        Positioned(
                          bottom: 10.h,
                          left: 35.w,
                          child: CustomButton(
                              buttonBody: "Save",
                              onTap: () {
                                controller.updateProfile();
                              },
                              buttonWidth: AppSize.screenWidth * 0.8),
                        )
                      ],
                    )))),
      ],
    );
  }
}
