import 'package:dalel/core/widgets/custom_category_text_header.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/cart/presentation/widgets/cart_historical_books_section.dart';
import 'package:dalel/features/cart/presentation/widgets/cart_historical_periods_section.dart';
import 'package:dalel/features/cart/presentation/widgets/cart_historical_souviners_section.dart';
import 'package:dalel/features/cart/presentation/widgets/custom_floating_action_button.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(height: 2),
                CustomTextCategoryHeader(text: S.of(context).bazar),
                const VerticalSpace(height: 3),
                CustomHeaderText(text: S.of(context).historyBooks),
                const CartHistoricalPeriodsSection(),
                CustomHeaderText(text: S.of(context).historyBooks),
                const CartHistoricalBooksSection(),
                CustomHeaderText(text: S.of(context).historicalsouvenirs),
                const CartHistoricalSouvinersSection(),
                
              ],
            ),
          ),
        ),
        floatingActionButton: const CustomFloatingActionButton(),
      ),
    );
  }
}
