import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/cart/data/model/history_book_model.dart';
import 'package:dalel/features/cart/presentation/widgets/add_cart_floationg_action_Button.dart';
import 'package:dalel/features/home/presentation/screens/bazar_recommentdation_section.dart';
import 'package:dalel/features/home/presentation/widgets/custom_home_appbar.dart';
import 'package:dalel/features/home/presentation/widgets/custom_title_image_componant.dart';
import 'package:dalel/features/home/presentation/widgets/stack_details.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class BazarDetailsView extends StatelessWidget {
  final HistoryBookModel historicalBookModel;
  final List<HistoryBookModel> recommendations;
  const BazarDetailsView(
      {super.key,
      required this.historicalBookModel,
      required this.recommendations});

  get historicalDataModel => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 4),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(height: 2),
                const CustomHomeAppBar(),
                const VerticalSpace(height: 2),
                CustomTitelAndImageComponant(
                    image: Assets.assetsImagesVector11,
                    text: "About ${historicalBookModel.title}",
                    mainAxisAlignment: MainAxisAlignment.start),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockHeight! * 1),
                  child: DatailsStack(
                    historicalDataModel: historicalBookModel,
                    logoImage: Assets.assetsImagesVector,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: SizeConfig.blockWidth! * 4),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: CustomHeaderText(
                          text: "Price ${historicalBookModel.price}\$")),
                ),
                const VerticalSpace(height: 2),
                const CustomHeaderText(text: "Recommendations"),
                BazarRecommentdationSection(
                  recommendations: recommendations,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton:
          AddCartFloatingActionButton(historicalBookModel: historicalBookModel),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
