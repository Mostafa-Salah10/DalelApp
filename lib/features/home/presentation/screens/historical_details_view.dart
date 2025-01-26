import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/size_config.dart';
import 'package:dalel/core/widgets/app_spaces.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/data/model/historical_data_model.dart';
import 'package:dalel/features/home/presentation/widgets/custom_historical_char_suggistion_section.dart';
import 'package:dalel/features/home/presentation/widgets/custom_historical_periods_war_section.dart';
import 'package:dalel/features/home/presentation/widgets/custom_home_appbar.dart';
import 'package:dalel/features/home/presentation/widgets/custom_title_image_componant.dart';
import 'package:dalel/features/home/presentation/widgets/stack_details.dart';
import 'package:flutter/material.dart';

class HistoricalDetailsView extends StatelessWidget {
  final HistoricalDataModel historicalDataModel;
  final List<HistoricalDataModel> recommendations;
  const HistoricalDetailsView(
      {super.key,
      required this.historicalDataModel,
      required this.recommendations});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 4),
      child: ListView(
        children: [
          const VerticalSpace(height: 3),
          const CustomHomeAppBar(),
          const VerticalSpace(height: 2),
          CustomTitelAndImageComponant(
              image: Assets.assetsImagesVector11,
              text: "About ${historicalDataModel.title}",
              mainAxisAlignment: MainAxisAlignment.start),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: SizeConfig.blockHeight! * 1),
            child: DatailsStack(
              historicalDataModel: historicalDataModel,
              logoImage: Assets.assetsImagesVector,
            ),
          ),
          CustomTitelAndImageComponant(
              image: Assets.assetsImagesQueen,
              text: "${historicalDataModel.title} Wars",
              mainAxisAlignment: MainAxisAlignment.spaceBetween),
          CustomHistoricalPeriodsWarSection(
              recommendations: recommendations,
              warsModel: historicalDataModel.wars),
          const CustomHeaderText(text: "Recommendations"),
          CustomHistoricalCharSuggistionSection(
              recommendations: recommendations)
        ],
      ),
    ));
  }
}
