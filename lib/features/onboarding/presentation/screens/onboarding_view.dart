import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    LocalizationHelper.init(context);
    final provider = Provider.of<IndicatorProvider>(context, listen: false);
    final providerwatch = Provider.of<IndicatorProvider>(context, listen: true);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.blockHeight! * 2),
        child: Column(
          children: [
            CustomSkipText(provider: provider, providerwatch: providerwatch),
            const VerticalSpace(height: 2),
            const Expanded(child: CustomPageView()),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.blockHeight! * 4),
              child: CustomButton(
                onPressed: () async {
                  provider.nextPage();
                  if (provider.currentIndex == onboardingData.length - 1) {
                    await CashHelper.set(key: "isVisited", value: true)
                        .then((value) {
                      customPushReplacementNavigate(
                          context, AppRoutes.signUpScreenRoute);
                    });
                  }
                },
                text: provider.currentIndex == onboardingData.length - 1
                    ? S.of(context).createAcounte
                    : S.of(context).next,
              ),
            ),
            const VerticalSpace(height: 2),
            CustomLogInText(providerwatch: providerwatch),
          ],
        ),
      ),
    ));
  }
}
