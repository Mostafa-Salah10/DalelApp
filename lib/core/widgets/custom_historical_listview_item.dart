import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/features/home/data/model/historical_data_model.dart';
import 'package:dalel/features/home/presentation/screens/historical_details_view.dart';
import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalListViewItem extends StatelessWidget {
  final DataModel historicalModel;
  final String route;
  final List<DataModel> recommendations;
  const CustomHistoricalListViewItem({
    required this.historicalModel,
    required this.route,
    super.key,
    required this.recommendations,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! / 2.35,
      child: InkWell(
        onTap: () {
          if (route == AppRoutes.periodsDetailsScreenRoute) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HistoricalDetailsView(
                    recommendations:
                        recommendations as List<HistoricalDataModel>,
                    historicalDataModel:
                        historicalModel as HistoricalDataModel)));
          }
          if(route ==AppRoutes.periodsDetailsWarsScreenRoute){
            
          }
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          color: Colors.white,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: SizeConfig.blockWidth! * 15,
                  child: Text(
                      textAlign: TextAlign.center,
                      historicalModel.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: AppTextStyle.poppinsstyle14
                          .copyWith(fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                    width: SizeConfig.blockWidth! * 15,
                    child: Image.asset(historicalModel.image)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
