import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/auth/prensentation/screens/auth_signin_veiw.dart';
import 'package:dalel/features/auth/prensentation/screens/auth_signup_veiw.dart';
import 'package:dalel/features/onboarding/presentation/manager/indicator_provider.dart';
import 'package:dalel/features/onboarding/presentation/screens/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/screens/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

abstract class AppRouter {
  static Route<dynamic> ongenerateRoute(RouteSettings? settings) {
    switch (settings?.name) {
      case AppRoutes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.onBoardingScreenRoute:
        return MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider<IndicatorProvider>(
                create: (context) => IndicatorProvider(),
                child: const OnboardingView()));

      case AppRoutes.signInScreenRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: const AuthSigninVeiw(),
                ));
      case AppRoutes.signUpScreenRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: const AuthSignupVeiw(),
                ));
      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
