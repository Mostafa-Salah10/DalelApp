import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Text(
        "Cart Page",
        style: AppTextStyle.poppinsstyle28,
      ));
  }
}