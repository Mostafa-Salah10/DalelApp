import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/features/auth/prensentation/model_view/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthCubitState>(
      builder: (context, state) {
        return Checkbox(
          value: getIt<AuthCubit>().checkValue,
          activeColor: AppColors.deepBrown,
          side: BorderSide(width: 1, color: AppColors.lightGrey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          onChanged: (value) {
            getIt<AuthCubit>().changeCheckvalue(value ?? false);
          },
        );
      },
    );
  }
}
