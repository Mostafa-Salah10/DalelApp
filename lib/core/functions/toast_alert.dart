import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastAlert({required Color color, required String msg}) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0);
}
