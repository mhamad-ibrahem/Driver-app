import 'package:driver_app/Local/modules/order_details/controller/oredr_details_controller.dart';
import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:driver_app/Local/Core/Constant/TextStyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Widget/CustomExitButton.dart';
import '../Widget/dialog_button.dart';

OrderDetailsController controller = Get.find();
openOrderDialog(String name, void Function()? onPressed, BuildContext context) {
  Get.defaultDialog(
      title: "Do you want accept $name order ?",
      titleStyle: purpleTextStyle(false).copyWith(fontSize: 15.sp),
      backgroundColor: Theme.of(context).primaryColor,
      contentPadding:
          EdgeInsets.only(top: 10, bottom: 20, right: 30.sp, left: 30.sp),
      titlePadding: EdgeInsets.only(
        top: 20,
        right: 25.sp,
        left: 25.sp,
      ),
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 4,
                child: GetBuilder<OrderDetailsController>(
                  builder: (controller) => Text(
                    "Choose time for deliver oreder : ${controller.selectedTime}",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {
                      controller.openClock(context);
                    },
                    icon: const Icon(
                      Icons.timer,
                      color: AppColors.primary,
                    )),
              ),
            ],
          ),
          Positioned(top: -74.h, right: -40.w, child: const CustomExitButton())
        ],
      ),
      cancel: DialogButton(
        isAccept: false,
        onTap: () {},
      ),
      confirm: DialogButton(
        isAccept: true,
        onTap: () {
          Get.back();
          Get.offNamed(AppRoute.map);
        },
      ));
}

tryDialog() {}
//(json['client']as List).map((e) =>Client.fromJson(e)).toList()