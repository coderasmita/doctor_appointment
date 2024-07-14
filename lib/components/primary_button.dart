import 'package:flutter/material.dart';

import '../const/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.onTap,
    this.bgcolor,
    required this.text,
    this.height,
    this.width,
    this.fontSize,
    this.textColor,
  });
  final Function()? onTap;
  final Color? bgcolor;
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize:
            Size(width ?? MediaQuery.sizeOf(context).width, height ?? 50),
        backgroundColor: bgcolor ?? AppColors.primaryColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? AppColors.whiteColor,
        ),
      ),
    );
  }
}
