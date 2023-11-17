import 'package:flutter/material.dart';

import '../../Global/Core/Constant/Colors.dart';
import '../Core/Constant/Colors.dart';
import '../Core/Constant/TextStyles.dart';
import '../Widget/CustomBackButton.dart';

AppBar customAppBar(
    {isPurple = false, required String title, bool isBack = true}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    title: Text(
      title,
      style: purpleTextStyle(false)
          .copyWith(color: isPurple ? AppColors.dPurple : GlobalColors.white),
    ),
    leading: isBack ? CustomBackButton(isPurple: isPurple) : null,
  );
}
