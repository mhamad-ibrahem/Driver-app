import 'package:flutter/material.dart';

import '../../Global/Core/Constant/Colors.dart';
import '../Core/Constant/Colors.dart';
import '../Core/Constant/TextStyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonBody,
    required this.onTap,
    required this.buttonWidth,
    this.hieght,
  }) : super(key: key);
  final double buttonWidth;
  final VoidCallback? onTap;
  final String buttonBody;
  final double? hieght;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.dPurple,
      disabledColor: AppColors.deepGrey,
      disabledTextColor: GlobalColors.white,
      height: hieght ?? 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: SizedBox(
        width: buttonWidth,
        child: Center(
          child: Text(
            buttonBody,
            style: buttonTextStyle(),
          ),
        ),
      ),
    );
  }
}
