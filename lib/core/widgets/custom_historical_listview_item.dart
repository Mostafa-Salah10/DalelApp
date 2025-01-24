import 'package:dalel/core/utils/app_assets.dart';

import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalListViewItem extends StatelessWidget {
  const CustomHistoricalListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! / 2.35,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        color: Colors.white,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: SizeConfig.blockWidth! * 15,
                child: Text(
                    textAlign: TextAlign.center,
                    "Ancient Egypt",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppTextStyle.poppinsstyle14
                        .copyWith(fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                  width: SizeConfig.blockWidth! * 15,
                  child: Image.asset(Assets.assetsImagesPyramids)),
            ],
          ),
        ),
      ),
    );
  }
}
