import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/core/widgets/custom_historical_long_listview_item.dart';

import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalLongListView extends StatelessWidget {
  final List<DataModel> dataList;
  final String route;
  const CustomHistoricalLongListView({
    super.key,
    required this.dataList,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockHeight! * 17,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const HorizontilSpace(width: 2),
        itemCount: dataList.length,
        itemBuilder: (context, index) => CustomHistoricalLonglistViewItem(
          recommendations: dataList,
          mylist: dataList[index],
          route: route,
        ),
      ),
    );
  }
}
