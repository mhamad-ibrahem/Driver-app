import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Core/Constant/Colors.dart';
import '../Core/Constant/TextStyles.dart';

class OtpInput extends StatelessWidget {
  OtpInput({required this.otpFunction});
  Function(String)? otpFunction;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
        numberOfFields: 5,
        borderColor: AppColors.grey,
        focusedBorderColor: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
        fieldWidth: 40.sp,
        keyboardType: TextInputType.number,
        obscureText: false,
        showCursor: false,
        textStyle: Theme.of(context).textTheme.headline1,
        showFieldAsBox: false,
        borderWidth: 4.0,
        margin: EdgeInsets.symmetric(horizontal: 12.sp),
        onSubmit: otpFunction);
  }
}
