import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/widgets/general_loading_buttion.dart';
import 'package:dalel/features/cart/data/model/history_book_model.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class AddCartFloatingActionButton extends StatelessWidget {
  const AddCartFloatingActionButton({
    super.key,
    required this.historicalBookModel,
  });

  final HistoryBookModel historicalBookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 8),
        child: BlocConsumer<CartCubit, CartState>(
          listener: (context, state) {
            if (state is CartAddedFailureState) {
              toastAlert(color: AppColors.primaryColor, msg: state.msg);
            } else if (state is CartAddedSuccessState) {
              toastAlert(
                  color: AppColors.primaryColor,
                  msg: 'Successfully Item Added');
            }
          },
          builder: (context, state) {
            return state is CartAddedLoadingState
                ? const GeneralLoadingButtion()
                : CustomButton(
                    onPressed: () async {
                      await BlocProvider.of<CartCubit>(context)
                          .addToCart(historicalBookModel);
                    },
                    text: "Add To Cart");
          },
        ));
  }
}