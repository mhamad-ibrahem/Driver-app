import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Global/Core/Constant/Colors.dart';
import 'Colors.dart';
import 'FontFamily.dart';

TextStyle purpleTextStyle(bool isUnderLine) {
  return TextStyle(
      color: AppColors.primary,
      fontSize: 20.sp,
      decoration:
          isUnderLine == true ? TextDecoration.underline : TextDecoration.none,
      fontWeight: FontWeight.w600);
}

TextStyle buttonTextStyle() {
  return TextStyle(
      color: GlobalColors.white,
      fontSize: 15.sp,
      fontFamily: AppFontFamily.appFontFamily,
      fontWeight: FontWeight.w600);
}

TextStyle textFormStyle() {
  return TextStyle(
      color: GlobalColors.black,
      fontSize: 15.sp,
      fontFamily: AppFontFamily.appFontFamily,
      fontWeight: FontWeight.bold);
}
