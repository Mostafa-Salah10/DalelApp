import 'package:dalel/features/home/data/model/historical_perdios_model.dart';
import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalListViewItem extends StatelessWidget {
  final HistoricalPerdiosModel historicalModel;
  const CustomHistoricalListViewItem({
    required this.historicalModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      width: SizeConfig.screenWidth! / 2.35,
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
    );
  }
}
