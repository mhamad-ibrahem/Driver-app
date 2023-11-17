// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/TextStyles.dart';

class RememberMeRow extends StatelessWidget {
  RememberMeRow(
      {Key? key,
      required this.rememberMe,
      this.onChanged,
      required this.isLogin,
      required this.forgetPassword})
      : super(key: key);
  final bool rememberMe;
  final void Function(bool?)? onChanged;
  final void Function()? forgetPassword;
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: onChanged,
                checkColor: GlobalColors.white,
                activeColor: AppColors.dPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              FittedBox(
                  child: Text(
                'Remember me',
                style: Theme.of(context).textTheme.headline2,
              )),
            ],
          ),
        ),
        isLogin
            ? Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: forgetPassword,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: 20,
                      child: FittedBox(
                        child: Text(
                          'Forget password',
                          style: purpleTextStyle(false),
                        ),
                      ),
                    )),
              )
            : SizedBox()
      ],
    );
  }
}
