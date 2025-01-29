import 'package:dalel/features/home/presentation/widgets/custom_historical_char_section.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/presentation/widgets/custom_historical_souvenirs_section.dart';
import 'package:dalel/features/home/presentation/widgets/custom_home_appbar.dart';
import '../widgets/custom_historical_periods_section.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(height: 2),
              const CustomHomeAppBar(),
              const VerticalSpace(height: 2),
              CustomHeaderText(text: S.of(context).historicalperiods),
              const CustomHistoricalPeriodsSection(),
              CustomHeaderText(text: S.of(context).historicalchar),
              const CustomHistoricalCharSection(),
              CustomHeaderText(text: S.of(context).historicalsouvenirs),
              const CustomHistoricalSouvenirsSection(),
            ],
          ),
        ),
      ),
    ));
  }
}
