import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_image_signin.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomStackSignIn extends StatelessWidget {
  const CustomStackSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            S.of(context).appName,
            style: AppTextStyle.poppinsstyle28
                .copyWith(color: AppColors.offWhite),
          ),
        ),
        const Align(
            alignment: Alignment.bottomLeft,
            child: CustomImageSignIn(
              image: Assets.assetsImagesVector2,
            )),
        const Align(
          alignment: Alignment.bottomRight,
          child: CustomImageSignIn(
            image: Assets.assetsImagesVector1,
          ),
        ),
      ],
    );
  }
}