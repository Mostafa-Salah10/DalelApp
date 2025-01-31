import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/utils/size_config.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCreditCard extends StatelessWidget {
  final String text;
  const CustomCreditCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      height: SizeConfig.blockHeight! * 10,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 234, 234),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(width: 0.1),
      ),
      child: Row(
        children: [
          Container(
            height: SizeConfig.blockHeight! * 10,
            width: SizeConfig.blockWidth! * 14,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(Assets.assetsImagesBrownCreditCard))),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            maxLines: 2,
            style: AppTextStyle.poppinsstyle14.copyWith(
                fontSize: SizeConfig.textSize! * 1.7,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis),
          ),
          const Spacer(),
          BlocBuilder<CartCubit, CartState>(builder: (context, state) {
            return Radio(
              value: text,
              groupValue: BlocProvider.of<CartCubit>(context).groupValue,
              onChanged: (value) {
                BlocProvider.of<CartCubit>(context)
                    .changeGroupValueOfRadioButton(value ?? text);
              },
              activeColor: AppColors.deepBrown,
            );
          })
        ],
      ),
    );
  }
}
