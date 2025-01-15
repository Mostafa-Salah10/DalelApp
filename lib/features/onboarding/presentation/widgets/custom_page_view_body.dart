import 'package:dalel/core/ResponsiveHelper/size_config.dart';
import 'package:dalel/core/utils/app_spaces.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_dotte_indicator.dart';
import 'package:flutter/material.dart';

class CustomPageViewBody extends StatelessWidget {
  const CustomPageViewBody({
    super.key,
    required this.listData,
  });

  final OnboardingModel listData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockHeight! * 4),
      child: Column(
        children: [
          SizedBox(
              height: SizeConfig.blockHeight! * 42,
              child: Image.asset(listData.url)),
          const VerticalSpace(height: 2),
          const CustomDotteIndicator(),
          const VerticalSpace(height: 2),
          Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              listData.title,
              style: AppTextStyle.poppinsstyle24),
          const VerticalSpace(height: 3),
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            listData.descraption,
            style: AppTextStyle.poppinsstyle16,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
