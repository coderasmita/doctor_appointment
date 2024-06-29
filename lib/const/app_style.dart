import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'app_color.dart';

class AppStyles {
  static normal({
    String? title,
    Color? color = AppColor.textColor,
    double? size = 14,
    TextAlign alignment = TextAlign.center,
  }) {
    return title!.text.size(size).color(color).align(alignment).make();
  }

  static bold({
    String? title,
    Color? color = AppColor.textColor,
    double? size = 20,
    TextAlign alignment = TextAlign.center,
  }) {
    return title!.text
        .size(size)
        .fontWeight(FontWeight.bold)
        .color(color)
        .align(alignment)
        .make();
  }
}
