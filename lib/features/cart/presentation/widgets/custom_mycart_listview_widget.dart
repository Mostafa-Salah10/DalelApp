import 'package:dalel/features/cart/presentation/widgets/custom_mycart_listview_item.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';
import '../../data/model/cart_item_model.dart';

class CustomMyCartListViewWidget extends StatelessWidget {
  final List<CartItemModel> list;
  const CustomMyCartListViewWidget({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      separatorBuilder: (context, index) => const VerticalSpace(height: 2),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth! * 3),
        child: CustomMyCartListViewItem(
          itemModel: list.elementAt(index),
        ),
      ),
    );
  }
}
