import 'package:dalel/features/cart/data/model/cart_item_model.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CartCounterWidget extends StatelessWidget {
  final CartItemModel itemModel;
  const CartCounterWidget({
    super.key,
    required this.itemModel,
  });

  @override
  Widget build(BuildContext context) {
    final cartCubit = BlocProvider.of<CartCubit>(context);
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            cartCubit.decrementQuantity(itemModel);
          },
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                color: AppColors.offWhite, shape: BoxShape.circle),
            child: const Icon(
              Icons.remove,
              size: 20,
            ),
          ),
        ),
        Text(itemModel.quantity.toString()),
        GestureDetector(
          onTap: () {
            cartCubit.incrementQuantity(itemModel);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: AppColors.lightGrey, shape: BoxShape.circle),
            child: const Icon(
              Icons.add,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
