import 'package:doctors_appointment/const/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.textEditingController,
    this.textInputType,
  });

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: textInputType,
      controller: textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.black),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
