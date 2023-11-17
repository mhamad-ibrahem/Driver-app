import 'package:driver_app/Local/Shared/show_country_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/SignUpController.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Shared/remember_me.row.dart';
import '../../../../Widget/CustomTextFormField.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});
  final SignUpController controller = Get.find();
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
                prefix: const Icon(
                  Icons.person,
                  color: AppColors.primary,
                ),
                label: "Name",
                hint: "Enter your name",
                obscure: false,
                textEditingController: controller.name,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                prefix: CustomCountryPicker(
                    onSelect: (country) {}, countryCode: '+963'),
                label: "Phone Number",
                hint: "Enter your phone number",
                obscure: false,
                inputType: TextInputType.phone,
                textEditingController: controller.phone,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                prefix: const Icon(
                  Icons.lock,
                  color: AppColors.primary,
                ),
                label: "Password",
                hint: "Enter your password",
                obscure: controller.obscure,
                textEditingController: controller.password,
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
