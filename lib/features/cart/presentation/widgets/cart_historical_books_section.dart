import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/widgets/custom_historical_long_listview.dart';
import 'package:dalel/core/widgets/custom_shimmer.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_spaces.dart';

class CartHistoricalBooksSection extends StatelessWidget {
  const CartHistoricalBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cartCubit = BlocProvider.of<CartCubit>(context);
    return Column(
      children: [
        const VerticalSpace(height: 2),
        BlocConsumer<CartCubit, CartState>(
          listener: (context, state) async {
            if (state is CartBooksFailureState) {
              toastAlert(color: AppColors.red, msg: state.msg);
            }
          },
          builder: (context, state) {
            return state is CartBooksLoadingState
                ? CustomShimmerHistoricalLongListview()
                : CustomHistoricalLongListView(
                    route: AppRoutes.bazarDatailsScreenRoute,
                    dataList: cartCubit.histricalBooksFilterationList,
                  );
          },
        ),
        const VerticalSpace(height: 2),
      ],
    );
  }
}
