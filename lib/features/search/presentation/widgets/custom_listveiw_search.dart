import 'package:dalel/features/cart/data/model/history_book_model.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:dalel/features/cart/presentation/screens/bazar_details_view.dart';
import 'package:dalel/features/home/data/model/historical_data_model.dart';
import 'package:dalel/features/home/presentation/screens/historical_details_view.dart';
import 'package:dalel/features/search/presentation/manager/provider/search_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomListViewSearch extends StatelessWidget {
  const CustomListViewSearch({
    super.key,
    required this.runtimeType,
  });

  @override
  final Type runtimeType;

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, value, child) {
      return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: value.filterationListSearch.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () async {
            if (value.filterationListSearch[index].runtimeType ==
                HistoricalDataModel) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HistoricalDetailsView(
                      recommendations: value.historicaCharsList,
                      historicalDataModel: value.filterationListSearch[index]
                          as HistoricalDataModel)));
            } else if (value.filterationListSearch[index].runtimeType ==
                HistoryBookModel) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BlocProvider(
                        create: (context) => CartCubit()..fetchUserCart(),
                        child: BazarDetailsView(
                          historicalBookModel: value
                              .filterationListSearch[index] as HistoryBookModel,
                          recommendations: value.historicalBooksList,
                        ),
                      )));
            }
          },
          child: Text(
            value.filterationListSearch[index].title,
            style: AppTextStyle.poppinsstyle14
                .copyWith(fontSize: SizeConfig.textSize! * 1.8),
          ),
        ),
      );
    });
  }
}
