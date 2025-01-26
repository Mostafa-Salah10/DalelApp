import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/widgets/general_loading_buttion.dart';
import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/auth/prensentation/widgets/button_and_logic_it.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_checkbox.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_term_text.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final AuthCubit authCubit = BlocProvider.of(context);
    return BlocConsumer<AuthCubit, AuthCubitState>(
      listener: (context, state) {
        if (state is AuthCubitSuccess) {
          toastAlert(msg: state.msg, color: AppColors.deepBrown);
          customPushReplacementNavigate(context, AppRoutes.signInScreenRoute);
        } else if (state is AuthCubitFailure) {
          toastAlert(msg: state.msg, color: AppColors.red);
        }
      },
      builder: (context, state) {
        return Form(
            key: authCubit.signUpKey,
            child: Column(
              children: [
                CustomTextField(
                  onChanged: (firstname) {
                    authCubit.firstName = firstname;
                  },
                  label: S.of(context).firstName,
                ),
                CustomTextField(
                  onChanged: (lastname) {
                    authCubit.lastName = lastname;
                  },
                  label: S.of(context).lastName,
                ),
                CustomTextField(
                  onChanged: (email) {
                    authCubit.email = email;
                  },
                  label: S.of(context).emailAddress,
                ),
                CustomTextField(
                  onChanged: (pass) {
                    authCubit.password = pass;
                  },
                  secure: true,
                  label: S.of(context).pass,
                ),
                const VerticalSpace(height: 2),
                Row(
                  children: [
                    const CustomCheckbox(),
                    CustomTermText(
                        text1: S.of(context).agreeTerms,
                        text2: S.of(context).terms)
                  ],
                ),
                const VerticalSpace(height: 10),
                state is AuthCubitLoading
                    ? const GeneralLoadingButtion()
                    : const ButtonAndLogicIt(),
              ],
            ));
      },
    );
  }
}
