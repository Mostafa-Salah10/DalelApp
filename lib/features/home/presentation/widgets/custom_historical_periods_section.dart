import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/widgets/custom_historical_listview.dart';
import 'package:dalel/core/widgets/custom_shimmer.dart';
import 'package:dalel/features/home/presentation/manager/cubit/home_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalPeriodsSection extends StatelessWidget {
  const CustomHistoricalPeriodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    return Column(
      children: [
        const VerticalSpace(height: 2),
        BlocConsumer<HomeCubit, HomeCubitState>(
          listener: (context, state) {
            if (state is HomeCubitHistoricalPeriodsFailure) {
              toastAlert(color: AppColors.red, msg: state.msg);
            }
          },
          builder: (context, state) {
            return state is HomeCubitHistoricalPeriodsLoading
                ? CustomShimmerHistoricalListView()
                : CustomHistoricalListView(
                    recommendations: homeCubit.historicaCharsList,
                    route: AppRoutes.periodsDetailsScreenRoute,
                    dataModelList: homeCubit.historicalPeriodsList);
          },
        ),
        const VerticalSpace(height: 2),
      ],
    );
  }
}
