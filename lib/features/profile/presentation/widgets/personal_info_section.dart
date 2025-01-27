import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/features/profile/presentation/manager/cubit/profile_cubit.dart';
import 'package:dalel/features/profile/presentation/widgets/custom_info_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class PersonalInformationSection extends StatelessWidget {
  const PersonalInformationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ProfileFailureState) {
          toastAlert(color: AppColors.red, msg: state.msg);
        }
      },
      builder: (context, state) {
        final profileCubit = BlocProvider.of<ProfileCubit>(context);
        return state is ProfileLoadingState
            ? Text(
                "Loading ....",
                textAlign: TextAlign.center,
                style: AppTextStyle.poppinsstyle20,
              )
            : PersonalInformationWidget(currentUser: profileCubit);
      },
    );
  }
}
