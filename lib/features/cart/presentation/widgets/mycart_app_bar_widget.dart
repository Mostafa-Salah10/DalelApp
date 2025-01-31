import '../../../../core/widgets/custom_category_text_header.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class MyCartAppBarWidget extends StatelessWidget {
  const MyCartAppBarWidget({
    super.key,
    required this.icon,
    required this.text,
    this.onPressed,
  });

  final String icon;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        const Spacer(),
        CustomTextCategoryHeader(text: text),
        const Spacer(),
        IconButton(
            onPressed: onPressed,
            icon: Image.asset(
              icon,
              height: 20,
            )),
      ],
    );
  }
}
