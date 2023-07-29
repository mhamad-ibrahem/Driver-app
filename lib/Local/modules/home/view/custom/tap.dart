import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/Constant/Colors.dart';

class HomeTap extends StatelessWidget {
  const HomeTap(
      {super.key,
      required this.tabController,
      required this.onTap,
      required this.index});
  final TabController? tabController;
  final void Function(int)? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        splashBorderRadius: BorderRadius.circular(25),
        labelColor: GlobalColors.white,
        unselectedLabelColor: AppColors.nav,
        labelStyle: Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(fontSize: 13.sp, color: GlobalColors.white),
        unselectedLabelStyle:
            Theme.of(context).textTheme.headline1!.copyWith(fontSize: 13.sp),
        indicator: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(25),
        ),
        tabs: const [
          Text(
            "Pending",
          ),
          Text(
            "Accepted",
          ),
          Center(
            child: Text(
              "Rejected",
            ),
          ),
          Center(
            child: Text(
              "Completed",
            ),
          ),
        ],
        onTap: onTap,
      ),
    );
  }
}
