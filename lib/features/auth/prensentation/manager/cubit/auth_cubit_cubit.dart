import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_cubit_state.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  bool checkValue = false;
  GlobalKey<FormState> signUpKey = GlobalKey();
  AuthCubit() : super(AuthCubitInitial());

  void changeCheckvalue(bool value) {
    checkValue = value;
    emit(AuthCubitCheckBox());
    
  }
}
