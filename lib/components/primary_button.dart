import 'package:flutter/material.dart';

import '../const/app_color.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.icon,
    this.width,
    this.height,
    this.color,
    this.textColor,
    this.bgColor,
  });
  final String title;
  final Function()? onPressed;
  final Widget? icon;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? AppColor.primaryColor,
        fixedSize:
            Size(width ?? MediaQuery.sizeOf(context).width, height ?? 50),
      ),
      child: Text(
        title,
        style: TextStyle(color: textColor ?? AppColor.white),
      ),
    );
  }
}
