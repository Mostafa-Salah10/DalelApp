import 'package:dalel/features/auth/prensentation/widgets/have_account_text.dart';
import 'package:dalel/features/auth/prensentation/widgets/signup_form.dart';
import 'package:dalel/features/auth/prensentation/widgets/welcome_text.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class AuthSignupVeiw extends StatelessWidget {
  const AuthSignupVeiw({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 8),
        child: ListView(
          children: [
            const VerticalSpace(height: 13),
            WelcomeText(
              text: S.of(context).welcome,
            ),
            const VerticalSpace(height: 7),
            const SignInForm(),
            const VerticalSpace(height: 1.7),
            HaveAccountText(
              route: AppRoutes.signInScreenRoute,
              text1: S.of(context).havaAccount,
              text2: S.of(context).signIn,
            )
          ],
        ),
      ),
    );
  }
}
