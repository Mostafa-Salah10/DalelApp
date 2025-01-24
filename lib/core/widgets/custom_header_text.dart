import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  final String text;
  const CustomHeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: AppTextStyle.poppinsstyle20,);
  }
}
