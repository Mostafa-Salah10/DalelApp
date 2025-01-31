import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class OrderSuccessView extends StatelessWidget {
  const OrderSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Image.asset(Assets.assetsImagesOrderSuccess),
        const Spacer(),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.blockHeight! * 3),
          child: CustomButton(
              onPressed: () {
                customPushRemoveUntileNavigate(
                    context, AppRoutes.bottomNavBarScreenRoute);
              },
              text: S.of(context).backtohome),
        ),
        const VerticalSpace(height: 6)
      ],
    ));
  }
}
