import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/features/cart/data/model/history_book_model.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:dalel/features/cart/presentation/screens/bazar_details_view.dart';
import 'package:dalel/features/home/data/model/historical_data_model.dart';
import 'package:dalel/features/home/presentation/screens/historical_details_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalLonglistViewItem extends StatelessWidget {
  final DataModel mylist;
  final String? route;
  final List<DataModel>? recommendations;

  const CustomHistoricalLonglistViewItem({
    required this.mylist,
    super.key,
    this.route,
    this.recommendations,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! / 4.6,
      child: GestureDetector(
        onTap: () {
          if (route == AppRoutes.charsDetailsScreenRoute) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HistoricalDetailsView(
                historicalDataModel: mylist as HistoricalDataModel,
                recommendations: recommendations as List<HistoricalDataModel>,
              ),
            ));
          }

          if (route == AppRoutes.bazarDatailsScreenRoute) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BlocProvider(
                      create: (context) => CartCubit()..fetchUserCart(),
                      child: BazarDetailsView(
                        historicalBookModel: mylist as HistoryBookModel,
                        recommendations:
                            recommendations as List<HistoryBookModel>,
                      ),
                    )));
          }
        },
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: double.infinity,
                  height: SizeConfig.screenHeight! / 9,
                  child: Image.asset(
                    mylist.image,
                    fit: BoxFit.fill,
                  )),
              Text(
                textAlign: TextAlign.center,
                mylist.title,
                style: AppTextStyle.poppinsstyle14
                    .copyWith(fontSize: SizeConfig.textSize! * 1.5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
