import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/model_view/indicator_provider.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_page_view_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {

    return PageView.builder(
      controller:
          Provider.of<IndicatorProvider>(context, listen: false).controller,
      onPageChanged: (value) =>
          Provider.of<IndicatorProvider>(context, listen: false)
              .changeIndex(value),
      itemCount: onboardingData.length,
      itemBuilder: (_, index) {
        final listData = onboardingData[index];
        return CustomPageViewBody(listData: listData);
      },
    );
  }
}
