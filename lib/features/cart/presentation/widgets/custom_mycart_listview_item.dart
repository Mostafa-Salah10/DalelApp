import 'package:dalel/features/cart/data/model/cart_item_model.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:dalel/features/cart/presentation/widgets/cart_counter_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomMyCartListViewItem extends StatelessWidget {
  final CartItemModel itemModel;

  const CustomMyCartListViewItem({
    super.key,
    required this.itemModel,
  });

  @override
  Widget build(BuildContext context) {
    final cartCubit = BlocProvider.of<CartCubit>(context);

    return SizedBox(
      height: SizeConfig.blockHeight! * 12,
      child: Row(
        children: [
          Checkbox(
            activeColor: AppColors.lightGrey,
            value: itemModel.isSelected,
            onChanged: (value) {
              cartCubit.toggelCheckBoxValue(itemModel);
            },
          ),
          Expanded(
              child: Container(
            height: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 234, 234),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: double.infinity,
                  width: SizeConfig.blockWidth! * 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(itemModel.image))),
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
                CartCounterWidget(
                  itemModel: itemModel,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
