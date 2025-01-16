import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
class CustomDotteIndicator extends StatelessWidget {
  const CustomDotteIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<IndicatorProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          3,
          (index) => AnimatedContainer(
                margin: const EdgeInsets.only(left: 5),
                width: provider.currentIndex == index
                    ? SizeConfig.blockHeight! * 4
                    : SizeConfig.blockHeight! * 1,
                height: SizeConfig.blockHeight! * 1,
                duration: const Duration(
                  milliseconds: 300,
                ),
                decoration: BoxDecoration(
                    color: provider.currentIndex == index
                        ? AppColors.deepBrown
                        : AppColors.deepGrey,
                    //  shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(10)),
              )),
    );
  }
}
