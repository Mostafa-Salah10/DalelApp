import 'package:dalel/core/functions/toast_alert.dart';
import 'package:dalel/core/widgets/custom_historical_long_listview.dart';
import 'package:dalel/core/widgets/custom_shimmer.dart';
import 'package:dalel/features/home/presentation/manager/cubit/home_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalCharSection extends StatelessWidget {
  const CustomHistoricalCharSection({
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
              toastAlert(color: AppColors.red, msg: state.msg);
            }
          },
          builder: (context, state) {
            return state is HomeCubitHistoricalCharsLoading
                ? CustomShimmerHistoricalLongListview()
                : CustomHistoricalLongListView(
                    dataList:
                        BlocProvider.of<HomeCubit>(context).historicaCharsList);
          },
        ),
        const VerticalSpace(height: 2),
      ],
    );
  }
}
