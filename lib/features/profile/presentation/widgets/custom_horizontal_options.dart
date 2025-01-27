import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomHorizontalOptions extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const CustomHorizontalOptions({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.deepBrown,
          size: 25,
        ),
        const HorizontilSpace(width: 4),
        Text(
          text,
          style: AppTextStyle.poppinsstyle14
              .copyWith(fontSize: SizeConfig.textSize! * 2.0),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.arrow_forward_ios,
            color: AppColors.deepBrown,
            size: 20,
          ),
        ),
      ],
    );
  }
}
