import 'package:doctors_appointment/const/app_color.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
      {super.key,
      this.title,
      this.color = AppColor.textColor,
      this.size = 14,
      this.alignment = TextAlign.center,
      this.fontWeight = FontWeight.normal});

  final String? title;
  final Color? color;
  final double? size;
  final TextAlign alignment;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: alignment,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
        decorationStyle: TextDecorationStyle.dotted,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
