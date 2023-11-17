import 'package:driver_app/Local/modules/edit_profile/controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Widget/CustomTextFormField.dart';

class EditForm extends StatelessWidget {
  EditForm({super.key});
  final EditeProfileController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              CustomTextFormField(
                prefix: const Icon(
                  Icons.person,
                  color: AppColors.primary,
                ),
                label: "Name",
                hint: "Enter your name",
                obscure: false,
                textEditingController: controller.name,
                validator: (val) {
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                prefix: const Icon(
                  Icons.phone_android_outlined,
                  color: AppColors.primary,
                ),
                label: "Phone Number",
                hint: "Enter your phone number",
                obscure: false,
                textEditingController: controller.phone,
                inputType: TextInputType.phone,
                validator: (val) {
                  return null;
                },
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              // CustomTextFormField(
              //   prefix: const Icon(
              //     Icons.lock,
              //     color: AppColors.primary,
              //   ),
              //   label: "Password",
              //   hint: "Enter your password",
              //   obscure: true,
              //   textEditingController: controller.password,
              //   validator: (val) {
              //     return null;
              //   },
              //   suffixIcon: IconButton(
              //       onPressed: () {
              //         controller.changeObscure();
              //       },
              //       icon: Icon(
              //         controller.obscure
              //             ? Icons.visibility_rounded
              //             : Icons.visibility_off_rounded,
              //         color: AppColors.deepGrey,
              //       )),
              // ),
            ],
          )),
    );
  }
}
