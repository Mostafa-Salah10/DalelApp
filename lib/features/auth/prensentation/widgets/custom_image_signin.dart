import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomImageSignIn extends StatelessWidget {
  final String image;
  const CustomImageSignIn({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockHeight! * 12,
      child: Image.asset(image),
    );
  }
}