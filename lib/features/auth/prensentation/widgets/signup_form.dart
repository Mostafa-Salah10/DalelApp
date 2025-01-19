import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/features/auth/prensentation/model_view/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/auth/prensentation/widgets/button_and_logic_it.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_checkbox.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_term_text.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_text_field.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Form(
        key: getIt<AuthCubit>().signUpKey,
        child: Column(
          children: [
            CustomTextField(
              label: S.of(context).firstName,
            ),
            CustomTextField(
              label: S.of(context).lastName,
            ),
            CustomTextField(
              label: S.of(context).emailAddress,
            ),
            CustomTextField(
              secure: true,
              label: S.of(context).pass,
            ),
            Row(
              children: [
                const CustomCheckbox(),
                CustomTermText(
                    text1: S.of(context).agreeTerms, text2: S.of(context).terms)
              ],
            ),
            const VerticalSpace(height: 10),
            const ButtonAndLogicIt(),
          ],
        ));
  }
}
