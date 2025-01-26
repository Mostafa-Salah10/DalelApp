import 'package:dalel/core/utils/app_assets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.assetsImagesHeader),
        GestureDetector(
          onTap: () async {
            await FirebaseAuth.instance.signOut().then((value) {
              customPushReplacementNavigate(
                  context, AppRoutes.signInScreenRoute);
            });
          },
          child: Text(
            S.of(context).appName,
            style: AppTextStyle.logoStyle
                .copyWith(fontSize: SizeConfig.textSize! * 3.3),
          ),
        )
      ],
    );
  }
}
