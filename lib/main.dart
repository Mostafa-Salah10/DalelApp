import 'package:dalel/app/dalel_app.dart';
import 'package:dalel/core/cash/cash_helper.dart';
import 'package:dalel/core/functions/check_auth_state_changes.dart';
import 'package:dalel/core/service/service_locator.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyC1EzKUTpaLqTmo7J8sPPp4OlHXJkOAp8k',
          appId: '1:446174847947:android:d916f1fedb054498b5cc4e',
          messagingSenderId: "446174847947",
          projectId: "dalelapp-c3d0b"));
  setUpServiceLocator();
  await CashHelper.init();
  checkAuthStateChanges();

  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const DalelApp();
      }));
}
