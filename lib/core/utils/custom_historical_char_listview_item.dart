import 'package:dalel/core/utils/app_assets.dart';

import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalCharlistViewItem extends StatelessWidget {
  const CustomHistoricalCharlistViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! / 4.9,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: SizeConfig.screenHeight! / 9,
                child: Image.asset(Assets.assetsImages800pxRichardCoeurDeLion)),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                "Lionheart",
                style: AppTextStyle.poppinsstyle14
                    .copyWith(fontSize: SizeConfig.textSize! * 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
