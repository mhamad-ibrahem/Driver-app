import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Core/Constant/Colors.dart';
import '../Core/Constant/TextStyles.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({super.key, this.onTap, required this.isAccept});
  final VoidCallback? onTap;
  final bool isAccept;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: isAccept ? 12.w : 0, right: isAccept ? 0 : 12.w),
      child: MaterialButton(
        onPressed: onTap,
        color: isAccept ? GlobalColors.green : GlobalColors.red,
        disabledColor: AppColors.grey,
        disabledTextColor: GlobalColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: 50.w,
          child: Center(
            child: Text(
              isAccept ? "Accept" : "Reject",
              style: buttonTextStyle().copyWith(fontSize: 13.sp),
            ),
          ),
        ),
      ),
    );
  }
}
