import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/cart/presentation/screens/cart_view.dart';
import 'package:dalel/features/home/presentation/screens/home_view.dart';
import 'package:dalel/features/profile/presentation/screens/profile_view.dart';
import 'package:dalel/features/search/presentation/screens/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../manager/cubit/home_cubit_cubit.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      stateManagement: true,
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      backgroundColor: AppColors.primaryColor,
      navBarStyle: NavBarStyle.style12,
      decoration: NavBarDecoration(
          colorBehindNavBar: AppColors.offWhite,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    );
  }

  List<Widget> _buildScreens() {
    return [
      BlocProvider(
        create: (context) => HomeCubit()
          ..fetchHistoricalPeriods()
          ..fetchHistoricalCharscters()
          ..fetchHistoricalSouvenirs(),
        child: const HomeView(),
      ),
      const CartView(),
      const SearchView(),
      const ProfileView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          activeColorPrimary: AppColors.deepBrown,
          inactiveColorPrimary: AppColors.deepBrown,
          inactiveIcon: const Icon(Icons.home_outlined),
          icon: const Icon(
            Icons.home,
          )),
      PersistentBottomNavBarItem(
          activeColorPrimary: AppColors.deepBrown,
          inactiveColorPrimary: AppColors.deepBrown,
          inactiveIcon: const Icon(Icons.shopping_cart_outlined),
          icon: const Icon(
            Icons.shopping_cart,
          )),
      PersistentBottomNavBarItem(
          activeColorPrimary: AppColors.deepBrown,
          inactiveColorPrimary: AppColors.deepBrown,
          inactiveIcon: const Icon(Icons.search_rounded),
          icon: const Icon(
            Icons.search,
          )),
      PersistentBottomNavBarItem(
          activeColorPrimary: AppColors.deepBrown,
          inactiveColorPrimary: AppColors.deepBrown,
          inactiveIcon: const Icon(Icons.person_outline),
          icon: const Icon(
            Icons.person,
          )),
    ];
  }
}
