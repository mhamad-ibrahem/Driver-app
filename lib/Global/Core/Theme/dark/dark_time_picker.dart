import 'package:flutter/material.dart';

import '../../../../Local/Core/Constant/Colors.dart';
import '../../Constant/Colors.dart';

TimePickerThemeData dtimepicker() {
  return TimePickerThemeData(
      backgroundColor: GlobalColors.black,
      dayPeriodColor: AppColors.lPurple,
      dialHandColor: AppColors.primary,
      hourMinuteColor: GlobalColors.white,
      hourMinuteTextColor: AppColors.primary,
      dayPeriodTextColor: GlobalColors.white,
      dialTextColor: GlobalColors.white,
      dayPeriodBorderSide: const BorderSide(color: AppColors.grey, width: 2),
      entryModeIconColor: AppColors.primary,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.grey, width: 2),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
            borderRadius: BorderRadius.circular(12)),
      ),
      hourMinuteShape:
          const CircleBorder(side: BorderSide(color: AppColors.primary)),
      helpTextStyle: const TextStyle(color: AppColors.dPurple),
      dialBackgroundColor: AppColors.lPurple);
}
