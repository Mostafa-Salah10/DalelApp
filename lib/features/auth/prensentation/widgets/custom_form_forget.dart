import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/auth/prensentation/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomFormForgetPass extends StatelessWidget {
  const CustomFormForgetPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return Form(
      key: authCubit.forgetPassKey,
      child: Column(
        children: [
          CustomTextField(
            onChanged: (email) {
              authCubit.email = email;
            },
            label: S.of(context).emailAddress,
          ),
          const VerticalSpace(height: 20),
          CustomButton(
              onPressed: () async {
                if (authCubit.forgetPassKey.currentState!.validate()) {
                  authCubit.resetPasswod().then((value) {
                    toastAlert(
                        color: AppColors.deepBrown,
                        msg:
                            "Successfully , Check Your Email To Change Password");
                    customPushReplacementNavigate(
                        context, AppRoutes.signInScreenRoute);
                  }).catchError((e) {
                    toastAlert(color: AppColors.red, msg: e.toString());
                  });
                }
              },
              text: S.of(context).sentRest),
        ],
      ),
    );
  }
}
