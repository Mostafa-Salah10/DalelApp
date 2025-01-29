import 'package:dalel/features/cart/presentation/widgets/footer_mycart_widget.dart';
import 'package:dalel/features/cart/presentation/widgets/mycart_app_bar_widget.dart';
import 'package:dalel/features/cart/presentation/widgets/mycart_listview_section.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        children: [
          const VerticalSpace(height: 2),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 2),
            child: const MyCartAppBarWidget(),
          ),
          const VerticalSpace(height: 2),
          const CustomMyCartListViewSection(),
          const FooterMyCartWidget(),
        ],
      ),
    ));
  }
}
