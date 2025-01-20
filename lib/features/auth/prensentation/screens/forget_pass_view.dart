import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_form_forget.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 8),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: VerticalSpace(height: 14),
          ),
          SliverToBoxAdapter(
            child: Text(
              S.of(context).forgetPassagain,
              style: AppTextStyle.poppinsstyle26,
              textAlign: TextAlign.center,
            ),
          ),
          const SliverToBoxAdapter(
            child: VerticalSpace(height: 3),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: SizeConfig.blockHeight! * 30,
              child: Image.asset(
                Assets.assetsImagesVerefication,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              S.of(context).forgetdecraption,
              style: AppTextStyle.poppinsstyle14,
              textAlign: TextAlign.center,
            ),
          ),
          const SliverToBoxAdapter(
            child: VerticalSpace(height: 2),
          ),
          const SliverToBoxAdapter(
            child: CustomFormForgetPass(),
          )
        ],
      ),
    ));
  }
}
