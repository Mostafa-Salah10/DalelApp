import 'dart:async';
import 'package:dalel/core/cash/cash_helper.dart';
import 'package:dalel/core/functions/custom_navigator.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:dalel/generated/l10n.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    delayNavigate();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: Center(
        child: Text(S.of(context).appName, style: AppTextStyle.logoStyle),
      ),
    );
  }

  void delayNavigate() {
    Timer(
      const Duration(seconds: 4),
      () {
        var isvisited = CashHelper.get(key: "isVisited") ?? false;
        if (!isvisited == true) {
          customPushReplacementNavigate(
              context, AppRoutes.onBoardingScreenRoute);
        } else {
          customPushReplacementNavigate(context, AppRoutes.signInScreenRoute);
        }
      },
    );
  }
}
