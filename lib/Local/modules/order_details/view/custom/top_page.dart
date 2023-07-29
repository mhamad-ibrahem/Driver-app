import 'package:driver_app/Local/Core/Constant/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/TextStyles.dart';

class TopPageOrders extends StatelessWidget {
  const TopPageOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.lPurple,
              backgroundImage: AssetImage(AppImages.profile2),
              maxRadius: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Mhamad",
              style: purpleTextStyle(false),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: AppColors.primary,
            ),
            RichText(
              text: TextSpan(
                text: ' Location : ',
                style: purpleTextStyle(false),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Tartous/syria/areed',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 15.sp),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: RichText(
                text: TextSpan(
                  text: ' Total Price : ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16.sp),
                  children: <TextSpan>[
                    TextSpan(
                        text: '500\$',
                        style: purpleTextStyle(false).copyWith(fontSize: 15.sp))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    text: ' Total Count : ',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 16.sp),
                    children: <TextSpan>[
                      TextSpan(
                        text: '5',
                        style: purpleTextStyle(false).copyWith(fontSize: 15.sp),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        // const Divider(
        //   color: AppColors.grey,
        //   thickness: 1.2,
        // ),
      ],
    );
  }
}
