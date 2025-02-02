import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/features/auth/data/repository/auth_repo_impl.dart';
import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/auth/prensentation/screens/auth_signin_veiw.dart';
import 'package:dalel/features/auth/prensentation/screens/auth_signup_veiw.dart';
import 'package:dalel/features/auth/prensentation/screens/forget_pass_view.dart';
import 'package:dalel/features/cart/data/model/cart_item_model.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:dalel/features/cart/presentation/screens/checkout_view.dart';
import 'package:dalel/features/cart/presentation/screens/order_success_view.dart';
import 'package:dalel/features/cart/presentation/screens/shopping_cart_view.dart';
import 'package:dalel/features/home/presentation/screens/custom_bottom_navbar.dart';
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
        return MaterialPageRoute(builder: (context) => const SplashView());
      case AppRoutes.onBoardingScreenRoute:
        return MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider<IndicatorProvider>(
                create: (context) => IndicatorProvider(),
                child: const OnboardingView()));

      case AppRoutes.signInScreenRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(authRepo: AuthRepoImpl()),
                  child: const AuthSigninVeiw(),
                ));
      case AppRoutes.signUpScreenRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(authRepo: AuthRepoImpl()),
                  child: const AuthSignupVeiw(),
                ));
      case AppRoutes.forgetPasswordScreenRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(authRepo: AuthRepoImpl()),
                  child: const ForgetPassView(),
                ));
      case AppRoutes.bottomNavBarScreenRoute:
        return MaterialPageRoute(
            builder: (context) => const CustomBottomNavbar());
      case AppRoutes.shoppingCartScreenRoute:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => CartCubit()..fetchUserCart(),
                  child: const ShoppingCartView(),
                ));
      case AppRoutes.checkoutScreenRoute:
        final arg = settings!.arguments;
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => CartCubit(),
                  child: CheckoutView(
                    itemModel: arg as CartItemModel,
                  ),
                ));

      case AppRoutes.orderSuccessScreenRoute:
        return MaterialPageRoute(
            builder: (context) => const OrderSuccessView());

      default:
        return MaterialPageRoute(builder: (context) => const SplashView());
    }
  }
}
