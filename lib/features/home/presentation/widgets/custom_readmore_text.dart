import 'package:readmore/readmore.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomReadMoreText extends StatelessWidget {
  const CustomReadMoreText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: SizeConfig.blockWidth! * 42,
        height: SizeConfig.blockHeight! * 35,
        child: ListView(children: [
          ReadMoreText(
            trimLines: 7,
            trimCollapsedText: "Read More",
            trimExpandedText: "...Show Less",
            trimMode: TrimMode.Line,
            moreStyle: AppTextStyle.poppinsstyle14
                .copyWith(fontSize: SizeConfig.textSize! * 1.8),
            lessStyle: AppTextStyle.poppinsstyle14
                .copyWith(fontSize: SizeConfig.textSize! * 1.8),
            text,
            style: AppTextStyle.poppinsstyle16.copyWith(
                fontSize: SizeConfig.textSize! * 1.7,
                fontWeight: FontWeight.bold),
          ),
          const VerticalSpace(height: 16)
        ]));
  }
}
