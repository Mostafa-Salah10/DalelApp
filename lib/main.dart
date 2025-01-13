import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/routes/app_routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dalel',
      initialRoute: AppRoutes.splashScreenRoute,
      onGenerateRoute: AppRouter.ongenerateRoute,
    );
  }
}
