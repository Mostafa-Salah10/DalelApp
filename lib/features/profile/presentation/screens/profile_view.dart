import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Text(
        "Person Page",
        style: AppTextStyle.poppinsstyle28,
      ));
  }
}