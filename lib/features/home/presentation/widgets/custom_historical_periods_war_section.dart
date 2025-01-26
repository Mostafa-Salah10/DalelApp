import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/core/widgets/custom_historical_listview.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalPeriodsWarSection extends StatelessWidget {
  const CustomHistoricalPeriodsWarSection(
      {super.key, required this.warsModel, required this.recommendations});
  final List<DataModel> warsModel;
  final List<DataModel> recommendations;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHistoricalListView(
            recommendations: recommendations,
            dataModelList: warsModel,
            route: AppRoutes.periodsDetailsWarsScreenRoute),
        const VerticalSpace(height: 1.3),
      ],
    );
  }
}
