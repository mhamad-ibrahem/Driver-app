import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/Constant/Colors.dart';

class OrdersBody extends StatelessWidget {
  const OrdersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mobile",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp),
              ),
              Text(
                "10",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp),
              ),
              Text(
                "50\$",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp),
              ),
            ],
          ),
          const Divider(
            color: AppColors.grey,
            thickness: 1.2,
          )
        ],
      ),
    );
  }
}
