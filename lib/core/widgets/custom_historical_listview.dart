import 'package:dalel/core/widgets/custom_historical_listview_item.dart';

import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricallistView extends StatelessWidget {
  const CustomHistoricallistView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(height: 2),
        SizedBox(
          height: SizeConfig.blockHeight! * 13,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) =>
                const HorizontilSpace(width: 3),
            itemCount: 2,
            itemBuilder: (context, index) =>
                const CustomHistoricalListViewItem(),
          ),
        ),
        const VerticalSpace(height: 2),
      ],
    );
  }
}
