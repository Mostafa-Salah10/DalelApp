import 'package:flutter/material.dart';

void customPushNavigate(BuildContext context, String route) {
  Navigator.of(context).pushNamed(route);
}

void customPushReplacementNavigate(BuildContext context, String route) {
  Navigator.of(context).pushReplacementNamed(route);
}

void customPushRemoveUntileNavigate(BuildContext context, String route) {
  Navigator.of(context).pushNamedAndRemoveUntil(
    route,
    (route) => true,
  );
}
