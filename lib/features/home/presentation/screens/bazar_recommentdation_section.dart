import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/widgets/app_spaces.dart';
import 'package:dalel/core/widgets/custom_historical_long_listview.dart';
import 'package:flutter/material.dart';

class BazarRecommentdationSection extends StatelessWidget {
  const BazarRecommentdationSection({super.key, required this.recommendations});
  final List<DataModel> recommendations;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(height: 1.3),
        CustomHistoricalLongListView(
          dataList: recommendations,
          route: AppRoutes.bazarDatailsScreenRoute,
        ),
        const VerticalSpace(height: 1.3),
      ],
    );
  }
}
