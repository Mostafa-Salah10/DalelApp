import 'package:dalel/features/auth/data/repository/auth_repo_impl.dart';
import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/auth/prensentation/screens/auth_signin_veiw.dart';
import 'package:dalel/features/profile/presentation/widgets/custom_horizontal_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomOptionsWidget extends StatelessWidget {
  const CustomOptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).Account,
          style: AppTextStyle.poppinsstyle16.copyWith(
              color: AppColors.lightGrey, fontWeight: FontWeight.w700),
        ),
        const VerticalSpace(height: 3),
        CustomHorizontalOptions(
          text: S.of(context).editprofile,
          icon: Icons.person,
        ),
        const VerticalSpace(height: 3),
        Divider(
          color: AppColors.lightGrey,
          height: 1,
        ),
        const VerticalSpace(height: 2),
        CustomHorizontalOptions(
          text: S.of(context).notifacation,
          icon: Icons.notifications_sharp,
        ),
        const VerticalSpace(height: 3),
        Divider(
          color: AppColors.lightGrey,
          height: 1,
        ),
        const VerticalSpace(height: 4),
        Text(
          S.of(context).general,
          style: AppTextStyle.poppinsstyle16.copyWith(
              color: AppColors.lightGrey, fontWeight: FontWeight.w700),
        ),
        const VerticalSpace(height: 3),
        CustomHorizontalOptions(
          text: S.of(context).setting,
          icon: Icons.settings,
        ),
        const VerticalSpace(height: 3),
        Divider(
          color: AppColors.lightGrey,
          height: 1,
        ),
        const VerticalSpace(height: 3),
        CustomHorizontalOptions(
          text: S.of(context).security,
          icon: Icons.lock,
        ),
        const VerticalSpace(height: 3),
        Divider(
          color: AppColors.lightGrey,
          height: 1,
        ),
        const VerticalSpace(height: 2),
        CustomHorizontalOptions(
          text: S.of(context).privacy,
          icon: Icons.privacy_tip,
        ),
        const VerticalSpace(height: 2),
        Divider(
          color: AppColors.lightGrey,
          height: 1,
        ),
        const VerticalSpace(height: 2),
        CustomHorizontalOptions(
          onTap: () async {
            await FirebaseAuth.instance.signOut().then((value) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider(
                          create: (context) =>
                              AuthCubit(authRepo: AuthRepoImpl()),
                          child: const AuthSigninVeiw(),
                        )),
                
              );
            });
          },
          text: S.of(context).logOut,
          icon: Icons.logout,
        ),
      ],
    );
  }
}
