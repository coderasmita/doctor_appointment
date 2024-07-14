import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppText extends StatelessWidget {
  const AppText(
      {super.key, required this.text, this.size, this.weight, this.color});
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.normal,
        color: color ?? AppColors.blackColor,
      ),
    );
  }
}
