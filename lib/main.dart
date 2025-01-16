import 'package:dalel/app/dalel_app.dart';
import 'package:dalel/core/cash/cash_helper.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const DalelApp();
      }));
}
