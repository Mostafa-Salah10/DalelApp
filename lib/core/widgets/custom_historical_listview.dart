import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/core/widgets/custom_historical_listview_item.dart';

import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalListView extends StatelessWidget {
  const CustomHistoricalListView({
    super.key,
    required this.dataModelList,
  });

  final List<DataModel> dataModelList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockHeight! * 13,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const HorizontilSpace(width: 3),
        itemCount: dataModelList.length,
        itemBuilder: (context, index) => CustomHistoricalListViewItem(
          historicalModel: dataModelList[index],
        ),
      ),
    );
  }
}
