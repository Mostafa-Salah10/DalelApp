import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class FooterMyCartWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String texbtn;
  final num? totalPrice;
  const FooterMyCartWidget({
    super.key,
    this.onPressed,
    required this.texbtn,
    this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.blockWidth! * 7),
      height: 140,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Total Payment',
                style: AppTextStyle.poppinsstyle16.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.textSize! * 1.8),
              ),
              const Spacer(),
              BlocBuilder<CartCubit, CartState>(
                builder: (context, state) {
                  return Text(
                      totalPrice == null
                          ? '\$ ${BlocProvider.of<CartCubit>(context).totalPayment}'
                          : '\$ $totalPrice',
                      style: AppTextStyle.poppinsstyle16.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.textSize! * 1.8,
                          color: AppColors.lightGrey));
                },
              ),
            ],
          ),
          const Spacer(),
          CustomButton(onPressed: onPressed, text: texbtn)
        ],
      ),
    );
  }
}
