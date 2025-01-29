import 'package:dalel/core/functions/custom_navigator.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: () {
            customPushNavigate(context, AppRoutes.shoppingCartScreenRoute);
          },
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: AppColors.offWhite,
          )),
    );
  }
}
