import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class WelcomeText extends StatelessWidget {
  final String text;
  const WelcomeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.poppinsstyle28,
      textAlign: TextAlign.center,
    );
  }
}
