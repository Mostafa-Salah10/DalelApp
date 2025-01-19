import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTermText extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomTermText({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        style: AppTextStyle.poppinsstyle14,
        TextSpan(children: [
          TextSpan(text: text1),
          TextSpan(
              text: text2,
              style: const TextStyle(decoration: TextDecoration.underline)),
        ]));
  }
}
