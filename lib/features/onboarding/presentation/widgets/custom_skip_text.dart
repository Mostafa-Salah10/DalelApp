import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomSkipText extends StatelessWidget {
  const CustomSkipText({
    super.key,
    required this.provider,
    required this.providerwatch,
  });

  final IndicatorProvider provider;
  final IndicatorProvider providerwatch;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockHeight! * 4),
        child: InkWell(
          onTap: () {
            provider.nextPage();
          },
          child: Visibility(
            visible: providerwatch.currentIndex == onboardingData.length - 1
                ? false
                : true,
            child: Text(S.of(context).skipText,
                style: AppTextStyle.poppinsstyle16
                    .copyWith(fontWeight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}
