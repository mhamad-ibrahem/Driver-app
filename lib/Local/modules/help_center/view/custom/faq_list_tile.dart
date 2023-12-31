import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Shared/app_divider.dart';

class FaqListTile extends StatelessWidget {
  const FaqListTile(
      {super.key,
      required this.title,
      required this.isTrailing,
      required this.isLeading,
      this.icon,
      required this.subTitle,
      this.onPress});
  final String title;
  final String subTitle;
  final bool isTrailing;
  final bool isLeading;
  final IconData? icon;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onPress,
          title: Text(
            title,
            style: isTrailing
                ? Theme.of(context).textTheme.headline1
                : Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 15.sp,
                    ),
          ),
          subtitle: isLeading
              ? Text(
                  subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 12),
                )
              : null,
          trailing: isTrailing
              ? IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: AppColors.primary,
                  ),
                  onPressed: () {},
                )
              : null,
          leading: isLeading
              ? Icon(
                  icon,
                  color: AppColors.primary,
                )
              : null,
        ),
        const AppDivider()
      ],
    );
  }
}
