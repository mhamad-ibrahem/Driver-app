import 'package:driver_app/Local/modules/sign_up/controller/SignUpController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Global/Core/Constant/Size.dart';
import '../../../../Core/Constant/TextStyles.dart';
import '../../../../Widget/CustomButton.dart';

class BottomPageSignUp extends StatelessWidget {
  BottomPageSignUp({super.key});
  SignUpController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: CustomButton(
              buttonBody: "Sign Up",
              onTap: () {
                controller.signUp();
              },
              buttonWidth: AppSize.screenWidth * 0.8),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "If you have an account?",
              style: Theme.of(context).textTheme.headline2,
            ),
            TextButton(
                onPressed: () {
                  controller.goToSignIn();
                },
                child: Text(
                  "Sign In",
                  style: purpleTextStyle(true),
                ))
          ],
        )
      ],
    );
  }
}
