import 'package:dalel/core/functions/custom_navigator.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class HaveAccountText extends StatelessWidget {
  final String text1;
  final String text2;
  const HaveAccountText({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            text1,
            style: AppTextStyle.poppinsstyle14,
          ),
        ),
        GestureDetector(
          onTap: () {
            customPushNavigate(context, AppRoutes.signInScreenRoute);
          },
          child: FittedBox(
            child: Text(
              text2,
              style: AppTextStyle.poppinsstyle14.copyWith(
                  color: AppColors.lightGrey, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
