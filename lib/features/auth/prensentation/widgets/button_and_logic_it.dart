import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/features/auth/prensentation/model_view/cubit/auth_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class ButtonAndLogicIt extends StatelessWidget {
  const ButtonAndLogicIt({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthCubitState>(
      builder: (context, state) {
        return CustomButton(
          color: getIt<AuthCubit>().checkValue
              ? AppColors.primaryColor
              : AppColors.lightGrey,
          onPressed: () {
            if (getIt<AuthCubit>().signUpKey.currentState!.validate() &&
                getIt<AuthCubit>().checkValue) {
              customPushReplacementNavigate(
                  context, AppRoutes.splashScreenRoute);
            }
          },
          text: S.of(context).signUp,
        );
      },
    );
  }
}
