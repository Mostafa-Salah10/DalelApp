import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/features/onboarding/presentation/screens/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/screens/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  static Route<dynamic> ongenerateRoute(RouteSettings? settings) {
    switch (settings?.name) {
      case AppRoutes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.onBoardingScreenRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
