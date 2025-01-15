import 'package:dalel/core/ResponsiveHelper/size_config.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_spaces.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/utils/localization_helper.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/model_view/indicator_provider.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_page_view.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_skip_text.dart';
import 'package:flutter/material.dart';
import 'package:dalel/generated/l10n.dart';
import 'package:provider/provider.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    LocalizationHelper.init(context);
    final provider = Provider.of<IndicatorProvider>(context, listen: false);
    final providerwatch = Provider.of<IndicatorProvider>(context, listen: true);
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const VerticalSpace(height: 2),
          CustomSkipText(provider: provider, providerwatch: providerwatch),
          const VerticalSpace(height: 2),
          const Expanded(child: CustomPageView()),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.blockHeight! * 4),
            child: CustomButton(
              onPressed: () {
                provider.nextPage();
              },
              text: provider.currentIndex == onboardingData.length - 1
                  ? S.of(context).createAcounte
                  : S.of(context).next,
            ),
          ),
          const VerticalSpace(height: 3),
          InkWell(
            onTap: () {},
            child: Visibility(
              visible: providerwatch.currentIndex == onboardingData.length - 1
                  ? true
                  : false,
              child: Text(S.of(context).loginNow,
                  style: AppTextStyle.poppinsstyle16.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColors.deepGrey,
                  )),
            ),
          ),
        ],
      ),
    ));
  }
}
