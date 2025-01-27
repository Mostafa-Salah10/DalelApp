import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

alerDialog(
    {required BuildContext context,
    required String msg,
    required void Function()? onConfirmBtnTap}) {
  return QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      text: msg,
      confirmBtnText: 'Yes',
      cancelBtnText: 'No',
      confirmBtnColor: Colors.green,
      onCancelBtnTap: () {
        Navigator.pop(context);
      },
      onConfirmBtnTap: onConfirmBtnTap);
}
