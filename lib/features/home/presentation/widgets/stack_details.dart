import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/features/home/presentation/widgets/custom_readmore_text.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class DatailsStack extends StatelessWidget {
  const DatailsStack({
    super.key,
    required this.historicalDataModel,
    required this.logoImage,
  });

  final DataModel historicalDataModel;
  final String logoImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  color: Colors.amber,
      width: double.infinity,
      height: SizeConfig.blockHeight! * 25,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: double.infinity,
              width: SizeConfig.blockWidth! * 42,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      historicalDataModel.image,
                    ),
                  )),
            ),
          ),
          Image.asset(logoImage),
          Positioned(
            top: 30,
            child: CustomReadMoreText(text: historicalDataModel.decrtiption),
          ),
        ],
      ),
    );
  }
}
