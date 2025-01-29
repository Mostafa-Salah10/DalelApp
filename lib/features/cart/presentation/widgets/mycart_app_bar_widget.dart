import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_category_text_header.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class MyCartAppBarWidget extends StatelessWidget {
  const MyCartAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        const Spacer(),
        CustomTextCategoryHeader(text: S.of(context).cart),
        const Spacer(),
        IconButton(
            onPressed: () async {
              await BlocProvider.of<CartCubit>(context).removeToCart();
            },
            icon: Image.asset(
              Assets.assetsImagesRemoveIcon,
              height: 20,
            )),
      ],
    );
  }
}
