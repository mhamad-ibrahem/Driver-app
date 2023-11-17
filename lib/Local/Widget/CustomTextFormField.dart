import 'package:flutter/material.dart';
import '../../Global/Core/Constant/Colors.dart';
import '../Core/Constant/Colors.dart';
import '../Core/Constant/TextStyles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.prefix,
    required this.label,
    required this.hint,
    required this.obscure,
    required this.textEditingController,
    this.validator,
    this.inputType,
    this.suffixIcon,
    this.onChange,
  }) : super(key: key);
  final Widget prefix;
  final String label;
  final String hint;
  final bool obscure;
  final TextInputType? inputType;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      controller: textEditingController,
      validator: validator,
      style: textFormStyle(context),
      obscureText: obscure,
      maxLines: 1,
      cursorColor: AppColors.deepGrey,
      keyboardType: inputType,
      decoration: InputDecoration(
          // fillColor: Theme,
          suffixIcon: suffixIcon,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: prefix,
          ),
          contentPadding:
              const EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 20),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline2,
          labelText: label,
          labelStyle: const TextStyle(
            fontSize: 17,
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: AppColors.primary, width: 2)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: AppColors.primary)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: GlobalColors.red, width: 2)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );
  }
}
