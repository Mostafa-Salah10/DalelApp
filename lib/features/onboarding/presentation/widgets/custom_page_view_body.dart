import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
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
