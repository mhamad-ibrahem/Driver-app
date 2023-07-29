import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Core/Constant/TextStyles.dart';

class TopPageForgetPassword extends StatelessWidget {
  const TopPageForgetPassword(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.isVerifay,
      this.remaningSecond});
  final String title;
  final String subTitle;
  final bool isVerifay;
  final String? remaningSecond;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          height: 20,
        ),
        isVerifay
            ? Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'We send you a verifay code, resend code after\n\n',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 14.sp),
                      children: <TextSpan>[
                        TextSpan(
                          text: '$remaningSecond',
                          style:
                              purpleTextStyle(false).copyWith(fontSize: 15.sp),
                        ),
                        const TextSpan(
                          text: ' seconds',
                        )
                      ],
                    ),
                  ),
                ],
              )
            : Text(
                subTitle,
                style: Theme.of(context).textTheme.headline2,
              ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
