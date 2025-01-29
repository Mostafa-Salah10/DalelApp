import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/widgets/custom_shimmer.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:dalel/features/cart/presentation/widgets/custom_mycart_listview_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomMyCartListViewSection extends StatelessWidget {
  const CustomMyCartListViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          if (state is CartUserFailureState) {
            toastAlert(color: AppColors.red, msg: state.msg);
          }
        },
        builder: (context, state) {
          final cartCubit = BlocProvider.of<CartCubit>(context);

          return state is CartUserLoadingState
              ?  CustomShimmerCartListView()
              : CustomMyCartListViewWidget(
                  list: cartCubit.userCartList,
                );
        },
      ),
    );
  }
}
