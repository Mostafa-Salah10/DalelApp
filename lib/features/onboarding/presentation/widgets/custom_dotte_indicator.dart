import 'package:dalel/core/ResponsiveHelper/size_config.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/onboarding/presentation/model_view/indicator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDotteIndicator extends StatelessWidget {
  const CustomDotteIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<IndicatorProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          3,
          (index) => AnimatedContainer(
                margin: const EdgeInsets.only(left: 5),
                width: provider.currentIndex == index
                    ? SizeConfig.blockHeight! * 4
                    : SizeConfig.blockHeight! * 1,
                height: SizeConfig.blockHeight! * 1,
                duration: const Duration(
                  milliseconds: 300,
                ),
                decoration: BoxDecoration(
                    color: provider.currentIndex == index
                        ? AppColors.deepBrown
                        : AppColors.deepGrey,
                    //  shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(10)),
              )),
    );
  }
}
