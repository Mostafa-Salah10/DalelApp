import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/utils/size_config.dart';
import 'package:dalel/core/widgets/app_spaces.dart';
import 'package:flutter/material.dart';

class CustomInfoPanner extends StatelessWidget {
  const CustomInfoPanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: SizeConfig.blockHeight! * 17.5,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 234, 234),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: SizeConfig.blockWidth! * 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF0EE),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: 20,
                        color: AppColors.lightGrey,
                      ),
                      const Spacer(),
                      Text(
                        'Home',
                        style:
                            TextStyle(fontSize: 12, color: AppColors.lightGrey),
                      )
                    ],
                  ),
                ),
                const VerticalSpace(height: 1),
                Flexible(
                  child: Text(
                    'Alexander Michael',
                    style: AppTextStyle.poppinsstyle14
                        .copyWith(fontSize: SizeConfig.textSize! * 2),
                  ),
                ),
                Text(
                  maxLines: 2,
                  'Pangandaran Brick Street No. 690445434 Yogya, Central Java',
                  style: AppTextStyle.poppinsstyle14.copyWith(
                      color: AppColors.lightGrey,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            'Change',
            style: AppTextStyle.poppinsstyle14.copyWith(
                fontSize: SizeConfig.textSize! * 1.8,
                color: AppColors.lightGrey),
          ),
        ],
      ),
    );
  }
}
