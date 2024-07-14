import 'package:flutter/material.dart';

import '../const/app_colors.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({
    super.key,
    required this.text,
    required this.textColor,
    this.onTap,
  });
  final String text;
  final Color? textColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? AppColors.whiteColor,
        ),
      ),
    );
  }
}
