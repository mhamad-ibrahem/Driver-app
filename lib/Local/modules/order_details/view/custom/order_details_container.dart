import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/Constant/Colors.dart';

class OrderDetailsContainer extends StatelessWidget {
  const OrderDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.lgrey, borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Product",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 15.sp, color: GlobalColors.black),
          ),
          Text(
            "Count",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 15.sp, color: GlobalColors.black),
          ),
          Text(
            "Price",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 15.sp, color: GlobalColors.black),
          ),
        ],
      ),
    );
  }
}
