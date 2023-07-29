import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/TextStyles.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.isSelected,
      required this.onTap});
  final String title;
  final IconData icon;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.primary),
            shape: BoxShape.circle,
            color:
                isSelected == false ? Colors.transparent : AppColors.dPurple),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon,
                color: isSelected == false
                    ? AppColors.dPurple
                    : GlobalColors.white),
            Text(
              title,
              style: purpleTextStyle(false).copyWith(
                  fontSize: 10.sp,
                  color: isSelected == false
                      ? AppColors.dPurple
                      : GlobalColors.white),
            )
          ],
        ),
      ),
    );
  }
}
