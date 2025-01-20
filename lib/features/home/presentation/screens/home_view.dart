import 'package:dalel/core/functions/custom_navigator.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.deepBrown,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) {
                  customPushReplacementNavigate(
                      context, AppRoutes.signInScreenRoute);
                });
              },
              icon: const Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
          child: Text(
        "Home Page",
        style: AppTextStyle.poppinsstyle28,
      )),
    );
  }
}
