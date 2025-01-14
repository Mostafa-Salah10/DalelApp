import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/generated/l10n.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const DalelApp();
      }));
}

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Dalel',
      initialRoute: AppRoutes.splashScreenRoute,
      onGenerateRoute: AppRouter.ongenerateRoute,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
