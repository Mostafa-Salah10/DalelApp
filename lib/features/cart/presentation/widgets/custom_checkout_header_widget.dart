import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomCheckHeaderCategory extends StatelessWidget {
  const CustomCheckHeaderCategory({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.poppinsstyle16,
    );
  }
}
