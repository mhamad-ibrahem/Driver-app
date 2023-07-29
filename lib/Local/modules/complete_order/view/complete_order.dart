import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/Core/Constant/Images.dart';
import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:driver_app/Local/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../Core/Constant/Colors.dart';

class CompleteOrder extends StatelessWidget {
  const CompleteOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
        pageTitle: "Complete Order",
        isBack: true,
        isScroll: false,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                  width: 250.w,
                  height: 120.h,
                  child: LottieBuilder.asset(AppImages.complete)),
            ),
            SizedBox(
              height: 70.h,
            ),
            Text(
              "Order Success",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Good job Ali you deliver the order at time ",
              style: Theme.of(context).textTheme.headline2,
            ),
            const Spacer(),
            Center(
              child: CustomButton(
                  buttonBody: "Deliver New Order",
                  onTap: () {
                    Get.offAllNamed(AppRoute.main);
                  },
                  buttonWidth: AppSize.screenWidth * 0.8),
            )
          ],
        ));
  }
}
