import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/widgets/custom_historical_listview_item.dart';
import 'package:dalel/features/home/presentation/manager/cubit/home_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricallistView extends StatelessWidget {
  const CustomHistoricallistView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeCubitState>(
      listener: (context, state) {
        if (state is HomeCubitHistoricalPeriodsFailure) {
          toastAlert(color: AppColors.red, msg: state.msg);
        }
      },
      builder: (context, state) {
        final homeCubit = BlocProvider.of<HomeCubit>(context);
        return state is HomeCubitHistoricalPeriodsLoading
            ?  CircularProgressIndicator(
              color: AppColors.deepBrown,
            )
            : Column(
                children: [
                  const VerticalSpace(height: 2),
                  SizedBox(
                    height: SizeConfig.blockHeight! * 13,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const HorizontilSpace(width: 3),
                      itemCount: homeCubit.historicalPeriodsList.length,
                      itemBuilder: (context, index) => CustomHistoricalListViewItem(
                        historicalModel: homeCubit.historicalPeriodsList[index],
                      ),
                    ),
                  ),
                  const VerticalSpace(height: 2),
                ],
              );
      },
    );
  }
}
