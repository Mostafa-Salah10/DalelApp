import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/core/widgets/custom_historical_long_listview.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
class CustomHistoricalCharSuggistionSection extends StatelessWidget {
  const CustomHistoricalCharSuggistionSection(
      {super.key, required this.recommendations});
  final List<DataModel> recommendations;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(height: 1.3),
        CustomHistoricalLongListView(
          dataList: recommendations,
          route: AppRoutes.charsDetailsScreenRoute,
        ),
        const VerticalSpace(height: 1.3),
      ],
    );
  }
}
