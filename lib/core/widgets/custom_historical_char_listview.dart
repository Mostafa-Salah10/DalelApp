import 'package:dalel/core/widgets/custom_historical_char_listview_item.dart';
import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalCharListView extends StatelessWidget {
  const CustomHistoricalCharListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(height: 2),
        SizedBox(
          height: SizeConfig.blockHeight! * 16,
          child: ListView.separated(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) =>
                const HorizontilSpace(width: 2),
            itemCount: 5,
            itemBuilder: (context, index) => const CustomHistoricalCharlistViewItem(),
          ),
        ),
        const VerticalSpace(height: 2),
      ],
    );
  }
}
