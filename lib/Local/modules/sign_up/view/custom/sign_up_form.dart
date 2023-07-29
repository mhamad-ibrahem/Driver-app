import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/SignUpController.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Shared/remember_me.row.dart';
import '../../../../Widget/CustomTextFormField.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});
  SignUpController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create account",
                  style: Theme.of(context).textTheme.headline1!),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Please enter name phone number \nand password",
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                icon: Icons.person,
                label: "Name",
                hint: "Enter your name",
                obscure: false,
                textEditingController: controller.name,
                validator: (val) {},
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                icon: Icons.phone_android_rounded,
                label: "Phone Number",
                hint: "Enter your phone number",
                obscure: false,
                textEditingController: controller.phone,
                validator: (val) {},
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                icon: Icons.lock,
                label: "Password",
                hint: "Enter your password",
                obscure: controller.obscure,
                textEditingController: controller.password,
                validator: (val) {},
                suffixIcon: IconButton(
                    onPressed: () {
                      controller.changeObscure();
                    },
                    icon: Icon(
                      controller.obscure
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      color: AppColors.deepGrey,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              RememberMeRow(
                isLogin: false,
                rememberMe: controller.rememberMe,
                onChanged: (val) {
                  controller.rememberMeCheck();
                },
                forgetPassword: () {},
              ),
            ],
          )),
    );
  }
}
