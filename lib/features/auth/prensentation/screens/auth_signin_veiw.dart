import 'package:dalel/features/auth/prensentation/widgets/custom_signin_form.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_stack_signin.dart';
import 'package:dalel/features/auth/prensentation/widgets/have_account_text.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class AuthSigninVeiw extends StatelessWidget {
  const AuthSigninVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(0.0),
      children: [
        Container(
          color: AppColors.primaryColor,
          width: double.infinity,
          height: SizeConfig.blockHeight! * 40,
          child: const CustomStackSignIn(),
        ),
        const VerticalSpace(height: 3),
        Text(
          S.of(context).welcomeback,
          style: AppTextStyle.poppinsstyle26,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockWidth! * 8,
              vertical: SizeConfig.blockHeight! * 2.7),
          child: const CustomSignInForm(),
        ),
        HaveAccountText(
          route: AppRoutes.signUpScreenRoute,
          text1: S.of(context).doNotHavaAccount,
          text2: S.of(context).signUp,
        )
      ],
    ));
  }
}
