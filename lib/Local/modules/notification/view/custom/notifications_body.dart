import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Shared/app_divider.dart';
import '../../model/notification_model.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody(
      {super.key, required this.notificationModel, this.onTap});
  final NotificationModel notificationModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          title: Text(
            notificationModel.title!,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 15.sp),
          ),
          subtitle: Text(
            notificationModel.subTitle!,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontSize: 11.sp),
          ),
          leading: notificationModel.image == null
              ? const Icon(
                  Icons.notification_important_rounded,
                  color: AppColors.primary,
                )
              : Image.asset(AppImages.profile2, fit: BoxFit.cover),
        ),
        const AppDivider()
      ],
    );
  }
}
