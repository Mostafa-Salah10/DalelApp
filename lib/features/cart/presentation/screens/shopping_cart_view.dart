import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/cart/data/model/cart_item_model.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:dalel/features/cart/presentation/widgets/footer_mycart_widget.dart';
import 'package:dalel/features/cart/presentation/widgets/mycart_app_bar_widget.dart';
import 'package:dalel/features/cart/presentation/widgets/mycart_listview_section.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            child: MyCartAppBarWidget(
              icon: Assets.assetsImagesRemoveIcon,
              text: S.of(context).cart,
              onPressed: () async {
                await BlocProvider.of<CartCubit>(context).removeToCart();
              },
            ),
          ),
          const VerticalSpace(height: 2),
          const CustomMyCartListViewSection(),
          FooterMyCartWidget(
            onPressed: () {
              final CartItemModel? item;
              item = context.read<CartCubit>().checkSelectedItems();
              if (item != null) {
                customPushNavigateWithArg(
                    context, AppRoutes.checkoutScreenRoute, item);
              } else {
                toastAlert(
                    color: AppColors.deepBrown,
                    msg: 'You Must Selected At Less On Item');
              }
            },
            texbtn: 'Checkout Now',
          ),
        ],
      ),
    ));
  }
}
