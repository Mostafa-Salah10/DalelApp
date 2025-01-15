import 'package:dalel/core/ResponsiveHelper/size_config.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color color;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.color = const Color(0xffC49E85)});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.blockWidth!*2.5)
      ),
      minWidth: SizeConfig.screenWidth,
      height: 50,
      color: color,
      onPressed: onPressed,
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: AppTextStyle.poppinsstyle16.copyWith(color: Colors.white),
      ),
    );
  }
}
