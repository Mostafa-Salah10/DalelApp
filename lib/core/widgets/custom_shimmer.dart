import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/widgets/custom_historical_listview.dart';
import 'package:dalel/core/widgets/custom_historical_long_listview.dart';
import 'package:dalel/features/cart/data/model/cart_item_model.dart';
import 'package:dalel/features/cart/presentation/widgets/custom_mycart_listview_widget.dart';

import 'package:skeletonizer/skeletonizer.dart';

import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomShimmerHistoricalListView extends StatelessWidget {
  CustomShimmerHistoricalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
        enabled: true,
        child: CustomHistoricalListView(
          dataModelList: _dummyList,
        ));
  }

  final List<DataModel> _dummyList = [
    DataModel(
        title: 'Ancient Egypt',
        image: Assets.assetsImagesPyramids,
        decrtiption: 'Disha'),
    DataModel(
        title: 'Ancient Egypt',
        image: Assets.assetsImagesPyramids,
        decrtiption: 'Disha')
  ];
}

class CustomShimmerHistoricalLongListview extends StatelessWidget {
  CustomShimmerHistoricalLongListview({super.key});
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
        enabled: true,
        child: CustomHistoricalLongListView(
          dataList: _dummyList,
        ));
  }

  final List<DataModel> _dummyList = [
    DataModel(
        title: 'Ancient Egypt',
        image: Assets.assetsImagesSalahalDinmohamedsaad,
        decrtiption: 'Disha'),
    DataModel(
        title: 'Ancient Egypt',
        image: Assets.assetsImagesSalahalDinmohamedsaad,
        decrtiption: 'Disha'),
    DataModel(
        title: 'Ancient Egypt',
        image: Assets.assetsImagesSalahalDinmohamedsaad,
        decrtiption: 'Disha'),
    DataModel(
        title: 'Ancient Egypt',
        image: Assets.assetsImagesSalahalDinmohamedsaad,
        decrtiption: 'Disha')
  ];
}

class CustomShimmerCartListView extends StatelessWidget {
  CustomShimmerCartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(child: CustomMyCartListViewWidget(list: _dummyList));
  }

  final List<CartItemModel> _dummyList = [
    CartItemModel(
        image: Assets.assetsImages800pxRichardCoeurDeLion,
        title: 'Mostafa Salah',
        quantity: 1,
        price: 120,
        id: '',
        isSelected: false),
    CartItemModel(
        image: Assets.assetsImages800pxRichardCoeurDeLion,
        title: 'Mostafa Salah',
        quantity: 1,
        price: 120,
        id: '',
        isSelected: false),
    CartItemModel(
        image: Assets.assetsImages800pxRichardCoeurDeLion,
        title: 'Mostafa Salah',
        quantity: 1,
        price: 120,
        id: '',
        isSelected: false),
    CartItemModel(
        image: Assets.assetsImages800pxRichardCoeurDeLion,
        title: 'Mostafa Salah',
        quantity: 1,
        price: 120,
        id: '',
        isSelected: false),
    CartItemModel(
        image: Assets.assetsImages800pxRichardCoeurDeLion,
        title: 'Mostafa Salah',
        quantity: 1,
        price: 120,
        id: '',
        isSelected: false),
  ];
}
