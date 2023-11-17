import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Global/Core/Constant/Size.dart';
import '../../controller/SignInController.dart';
import '../../../../Widget/CustomButton.dart';

class BottomPageSignIn extends StatelessWidget {
  BottomPageSignIn({super.key});
  final SignInController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: CustomButton(
              buttonBody: "Sign In",
              onTap: () {
                controller.signIn();
              },
              buttonWidth: AppSize.screenWidth * 0.8),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(
        //       "If you don't have an account?",
        //       style: Theme.of(context).textTheme.headline2,
        //     ),
        //     TextButton(
        //         onPressed: () {
        //           controller.goToSignUp();
        //         },
        //         child: Text(
        //           "Sign up",
        //           style: purpleTextStyle(true),
        //         ))
        //   ],
        // )
      ],
    );
  }
}
