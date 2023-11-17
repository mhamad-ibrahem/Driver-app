import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/Images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import '../controller/welcom_controller.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});
  final WelcomeController controller = Get.put(WelcomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lPurple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: AppSize.screenHight * 0.7,
            width: AppSize.screenWidth,
            child: Lottie.asset(AppImages.purpleDriver, fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}
