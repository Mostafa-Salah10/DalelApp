import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:dalel/features/cart/presentation/screens/cart_view.dart';
import 'package:dalel/features/home/presentation/manager/cubit/home_cubit_cubit.dart';
import 'package:dalel/features/home/presentation/screens/home_view.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:dalel/features/profile/presentation/manager/cubit/profile_cubit.dart';
import 'package:dalel/features/profile/presentation/screens/profile_view.dart';
import 'package:dalel/features/search/presentation/manager/provider/search_provider.dart';
import 'package:dalel/features/search/presentation/screens/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  final List<Widget> _screens = [
    BlocProvider(
      create: (context) => HomeCubit()
        ..fetchHistoricalSouvenirs()
        ..fetchHistoricalCharscters()
        ..fetchHistoricalPeriods(),
      child: const HomeView(),
    ),
    BlocProvider(
      create: (context) => CartCubit()
        ..fetchHistoricalPeriods()
        ..fetchHistoricalBooks()
        ..fetchHistoricalSouviners(),
      child: const CartView(),
    ),
    ChangeNotifierProvider<SearchProvider>(
        create: (context) => SearchProvider()..fetchAllData(),
        child: const SearchView()),
    BlocProvider(
      create: (context) => ProfileCubit()..fetchUser(),
      child: const ProfileView(),
    )
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(currentIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: BottomAppBar(
          color: AppColors.primaryColor,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  icon: currentIndex == 0
                      ? Icon(Icons.home, color: AppColors.deepBrown)
                      : Icon(Icons.home_outlined, color: AppColors.deepBrown)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  icon: currentIndex == 1
                      ? Icon(Icons.shopping_cart, color: AppColors.deepBrown)
                      : Icon(Icons.shopping_cart_outlined,
                          color: AppColors.deepBrown)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  icon: currentIndex == 2
                      ? Icon(Icons.search, color: AppColors.deepBrown)
                      : Icon(Icons.search_outlined,
                          color: AppColors.deepBrown)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  icon: currentIndex == 3
                      ? Icon(Icons.person, color: AppColors.deepBrown)
                      : Icon(Icons.person_outline, color: AppColors.deepBrown)),
            ],
          ),
        ),
      ),
    );
  }
}
