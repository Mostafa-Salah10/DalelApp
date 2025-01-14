import 'package:dalel/core/ResponsiveHelper/size_config.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle logoStyle = TextStyle(
      color: AppColors.deepBrown,
      fontFamily: "Pacifico",
      fontSize: SizeConfig.textSize! * 5,
      fontWeight: FontWeight.w400);
}
