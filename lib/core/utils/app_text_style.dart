import 'package:dalel/core/utils/size_config.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle logoStyle = TextStyle(
      color: AppColors.deepBrown,
      fontFamily: "Pacifico",
      fontSize: SizeConfig.textSize! * 5,
      fontWeight: FontWeight.w400);
  static TextStyle poppinsstyle14 = TextStyle(
      fontSize: SizeConfig.textSize! * 1.5,
      fontWeight: FontWeight.w500,
      color: AppColors.deepBrown,
      fontFamily: "Poppins");
  static TextStyle poppinsstyle16 = TextStyle(
      fontSize: SizeConfig.textSize! * 2.0,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      fontFamily: "Poppins");
  static TextStyle poppinsstyle24 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: SizeConfig.textSize! * 2.8,
    fontFamily: "Poppins",
    color: AppColors.black,
  );
  static TextStyle poppinsstyle26 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: SizeConfig.textSize! * 3.4,
    fontFamily: "Poppins",
    color: AppColors.black,
  );
  static TextStyle poppinsstyle28 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: SizeConfig.textSize! * 3.8,
    fontFamily: "Poppins",
    color: AppColors.black,
  );
  static TextStyle sairastyle28 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: SizeConfig.textSize! * 3.8,
    fontFamily: "Saira",
    color: AppColors.black,
  );
}
