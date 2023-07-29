import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopPageSignIn extends StatelessWidget {
  const TopPageSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "Welcom Back",
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Please enter your phone number and\npassword",
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          height: 40.h,
        ),
      ],
    );
  }
}
