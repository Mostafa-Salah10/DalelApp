import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomTextCategoryHeader extends StatelessWidget {
  final String text;
  const CustomTextCategoryHeader({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: AppTextStyle.poppinsstyle14.copyWith(
            fontSize: SizeConfig.textSize! * 2.5, fontWeight: FontWeight.bold),
      ),
    );
  }
}
