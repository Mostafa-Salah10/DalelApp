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
    return Column(
      children: [
        const VerticalSpace(height: 2),
        BlocConsumer<HomeCubit, HomeCubitState>(
          listener: (context, state) {
            if (state is HomeCubitHistoricalPeriodsFailure) {
              toastAlert(msg: state.msg, color: AppColors.red);
            }
          },
          builder: (context, state) {
            return state is HomeCubitHistoricalPeriodsLoading
                ? const CircularProgressIndicator()
                : SizedBox(
                    height: SizeConfig.blockHeight! * 13,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const HorizontilSpace(width: 3),
                      itemCount: context
                          .watch<HomeCubit>()
                          .historicalPeriodsList
                          .length,
                      itemBuilder: (context, index) => CustomHistoricalListViewItem(
                          historicalModel: context
                              .watch<HomeCubit>()
                              .historicalPeriodsList[index],
                        ),
                    ),
                  );
          },
        ),
        const VerticalSpace(height: 2),
      ],
    );
  }
}
