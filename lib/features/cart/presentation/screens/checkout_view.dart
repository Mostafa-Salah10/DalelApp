import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/cart/data/model/cart_item_model.dart';
import 'package:dalel/features/cart/presentation/widgets/custom_checkout_header_widget.dart';
import 'package:dalel/features/cart/presentation/widgets/custom_credit_card.dart';
import 'package:dalel/features/cart/presentation/widgets/custom_info_panner.dart';
import 'package:dalel/features/cart/presentation/widgets/custom_selected_product.dart';
import 'package:dalel/features/cart/presentation/widgets/footer_mycart_widget.dart';
import 'package:dalel/features/cart/presentation/widgets/mycart_app_bar_widget.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class CheckoutView extends StatelessWidget {
  final CartItemModel itemModel;
  const CheckoutView({super.key, required this.itemModel});

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
                EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 3),
            child: MyCartAppBarWidget(
              icon: Assets.assetsImagesVerticalMenuIcon,
              text: S.of(context).check,
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 5),
              child: ListView(
                children: [
                  const VerticalSpace(height: 2),
                  CustomCheckHeaderCategory(text: S.of(context).delivary),
                  const VerticalSpace(height: 2),
                  const CustomInfoPanner(),
                  const VerticalSpace(height: 2),
                  CustomCheckHeaderCategory(text: S.of(context).product),
                  const VerticalSpace(height: 2),
                  CustomSelectedProduct(itemModel: itemModel),
                  const VerticalSpace(height: 2),
                  CustomCheckHeaderCategory(text: S.of(context).paymentMethode),
                  const VerticalSpace(height: 2),
                  const CustomCreditCard(text: 'My Credit Card'),
                  const VerticalSpace(height: 2),
                  const CustomCreditCard(text: 'My Electric Cash'),
                ],
              ),
            ),
          ),
          FooterMyCartWidget(
            texbtn: 'Confirm Payment',
            onPressed: () {
              customPushNavigate(context, AppRoutes.orderSuccessScreenRoute);
            },
            totalPrice: itemModel.price * itemModel.quantity,
          )
        ],
      ),
    ));
  }
}
