import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:dalel/features/profile/presentation/widgets/custom_options_widget.dart';
import 'package:dalel/features/profile/presentation/widgets/personal_info_section.dart';
import '../../../../core/widgets/custom_category_text_header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 3),
        child: ListView(
          children: [
            const VerticalSpace(height: 2),
            CustomTextCategoryHeader(
              text: S.of(context).profile,
            ),
            const VerticalSpace(height: 3),
            const PersonalInformationSection(),
            const VerticalSpace(height: 3),
            const CustomOptionsWidget(),
          ],
        ),
      ),
    );
  }
}
