import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/utils/size_config.dart';
import 'package:dalel/features/cart/data/model/cart_item_model.dart';
import 'package:flutter/material.dart';

class CustomSelectedProduct extends StatelessWidget {
  final CartItemModel itemModel;

  const CustomSelectedProduct({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      height: SizeConfig.blockHeight! * 10,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 234, 234),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: SizeConfig.blockWidth! * 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(itemModel.image))),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemModel.title,
                maxLines: 2,
                style: AppTextStyle.poppinsstyle14.copyWith(
                    fontWeight: FontWeight.w700,
                    overflow: TextOverflow.ellipsis),
              ),
              Text('${itemModel.price} \$',
                  style: AppTextStyle.poppinsstyle14
                      .copyWith(fontWeight: FontWeight.w700)),
            ],
          ),
          const Spacer(),
          Text(
            '${itemModel.quantity} items',
            style: AppTextStyle.poppinsstyle14.copyWith(
                fontSize: SizeConfig.textSize! * 1.8,
                color: AppColors.lightGrey),
          ),
        ],
      ),
    );
  }
}
