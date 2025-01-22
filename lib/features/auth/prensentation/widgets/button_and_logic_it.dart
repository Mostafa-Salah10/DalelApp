import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class ButtonAndLogicIt extends StatelessWidget {
  const ButtonAndLogicIt({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthCubit authCubit = BlocProvider.of(context);

    return BlocBuilder<AuthCubit, AuthCubitState>(
      builder: (context, state) {
        return CustomButton(
          color: authCubit.checkValue
              ? AppColors.primaryColor
              : AppColors.lightGrey,
          onPressed: () async {
            if (authCubit.checkValue &&
                authCubit.signUpKey.currentState!.validate()) {
              await authCubit.signUpUser();
            }
          },
          text: S.of(context).signUp,
        );
      },
    );
  }
}
