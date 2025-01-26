import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/widgets/general_loading_buttion.dart';
import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthCubitState>(
      listener: (context, state) {
        if (state is AuthCubitSuccess) {
          toastAlert(msg: state.msg, color: AppColors.deepBrown);
          customPushReplacementNavigate(context, AppRoutes.homeNavBarScreenRoute);
        } else if (state is AuthCubitFailure) {
          toastAlert(msg: state.msg, color: AppColors.red);
        }
      },
      builder: (context, state) {
        return Form(
          key: authCubit.signInKey,
          child: Column(
            children: [
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
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    customPushNavigate(
                        context, AppRoutes.forgetPasswordScreenRoute);
                  },
                  child: Text(
                    S.of(context).forgetPass,
                    style: AppTextStyle.poppinsstyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const VerticalSpace(height: 12),
              state is AuthCubitLoading
                  ? const GeneralLoadingButtion()
                  : CustomButton(
                      onPressed: () async {
                        if (authCubit.signInKey.currentState!.validate()) {
                          await authCubit.signInUser();
                        }
                      },
                      text: S.of(context).signIn),
            ],
          ),
        );
      },
    );
  }
}
