import 'package:flutter/material.dart';
import 'package:dalel/generated/l10n.dart';

abstract class LocalizationHelper {
  static late S appStrings;
  static void init(BuildContext context) {
    appStrings = S.of(context);
  }
}
