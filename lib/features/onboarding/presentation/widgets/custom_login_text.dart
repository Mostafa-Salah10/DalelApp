import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
class CustomLogInText extends StatelessWidget {
  const CustomLogInText({
    super.key,
    required this.providerwatch,
  });

  final IndicatorProvider providerwatch;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await CashHelper.set(key: "isVisited", value: true)
            .then((value) {
          customPushReplacementNavigate(
              context, AppRoutes.signInScreenRoute);
        });
        ;
      },
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
    );
  }
}