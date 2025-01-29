import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/widgets/custom_historical_long_listview.dart';
import 'package:dalel/core/widgets/custom_shimmer.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CartHistoricalSouvinersSection extends StatelessWidget {
  const CartHistoricalSouvinersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cartCubit = BlocProvider.of<CartCubit>(context);
    return Column(
      children: [
        const VerticalSpace(height: 2),
        BlocConsumer<CartCubit, CartState>(
          listener: (context, state) async {
            if (state is CartSouvinersFailureState) {
              toastAlert(color: AppColors.red, msg: state.msg);
            }
          },
          builder: (context, state) {
            return state is CartSouvinersLoadingState
                ? CustomShimmerHistoricalLongListview()
                : CustomHistoricalLongListView(
                    route: AppRoutes.bazarDatailsScreenRoute,
                    dataList: cartCubit.histricalSouvinersFilterationList,
                  );
          },
        ),
        const VerticalSpace(height: 2),
      ],
    );
  }
}
