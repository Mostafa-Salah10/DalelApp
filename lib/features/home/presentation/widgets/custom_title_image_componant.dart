
import 'package:dalel/core/widgets/custom_header_text.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomTitelAndImageComponant extends StatelessWidget {
  final String text;
  final String image;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  const CustomTitelAndImageComponant({
    super.key,
    required this.text,
    required this.image,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        CustomHeaderText(text: text),
        const SizedBox(
          width: 15,
        ),
        Image.asset(
          image,
          width: SizeConfig.blockWidth! * 12,
        ),
      ],
    );
  }
}