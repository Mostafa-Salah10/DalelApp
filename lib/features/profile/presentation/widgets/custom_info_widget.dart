import 'package:dalel/features/profile/presentation/manager/cubit/profile_cubit.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class PersonalInformationWidget extends StatelessWidget {
  const PersonalInformationWidget({
    super.key,
    required this.currentUser,
  });

  final ProfileCubit currentUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(currentUser.user!.image),
                  fit: BoxFit.fill)),
        ),
        const HorizontilSpace(width: 1),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                "${currentUser.user!.fName} ${currentUser.user!.lName}",
                style: AppTextStyle.poppinsstyle20,
              ),
            ),
            SizedBox(
              width: SizeConfig.blockWidth! * 60,
              child: Text(
                currentUser.user!.email,
                style: AppTextStyle.poppinsstyle16.copyWith(
                    color: AppColors.lightGrey,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: AppColors.lightGrey,
            ))
      ],
    );
  }
}
