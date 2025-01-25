import 'package:dalel/core/widgets/custom_historical_char_listview.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/presentation/widgets/custom_home_appbar.dart';
import '../widgets/custom_historical_periods_section.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 5),
      child: ListView(
        children: [
          const VerticalSpace(height: 5),
          const CustomHomeAppBar(),
          const VerticalSpace(height: 2),
          CustomHeaderText(text: S.of(context).historicalperiods),
          const CustomHistoricalPeriodsSection(),
          const VerticalSpace(height: 2),
          CustomHeaderText(text: S.of(context).historicalchar),
          const CustomHistoricalCharListView(),
          CustomHeaderText(text: S.of(context).historicalsouvenirs),
          const CustomHistoricalCharListView(),
        ],
      ),
    ));
  }
}
