import 'package:driver_app/Local/modules/edit_profile/controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Widget/CustomTextFormField.dart';

class EditForm extends StatelessWidget {
  EditForm({super.key});
  EditeProfileController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: controller.formKey,
          child: Column(
            children: [
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
                obscure: true,
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
            ],
          )),
    );
  }
}
