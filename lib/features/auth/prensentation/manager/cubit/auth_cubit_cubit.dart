import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/auth/data/repository/auth_repo.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_cubit_state.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  final AuthRepo authRepo;
  bool checkValue = false;
  GlobalKey<FormState> signUpKey = GlobalKey();
  GlobalKey<FormState> signInKey = GlobalKey();
  GlobalKey<FormState> forgetPassKey = GlobalKey();
  AuthCubit({required this.authRepo}) : super(AuthCubitInitial());

  void changeCheckvalue(bool value) {
    checkValue = value;
    emit(AuthCubitCheckBox());
  }

  Future<void> signUpUser() async {
    try {
      emit(AuthCubitLoading());
      await authRepo.createUserWithEmailAndPassword(
          email: email!, password: password!);
      await verifyEmailAccont();
      await createUserProfile();
      emit(AuthCubitSuccess(msg: "Successfully,Verify Your Email Account"));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(AuthCubitFailure(msg: "The password provided is too weak."));
      } else if (e.code == 'email-already-in-use') {
        emit(AuthCubitFailure(
            msg: "The account already exists for that email."));
      } else if (e.code == "invalid-email") {
        emit(AuthCubitFailure(msg: "Invalid Email"));
      } else {
        emit(AuthCubitFailure(msg: e.code));
      }
    } catch (e) {
      emit(AuthCubitFailure(msg: e.toString()));
    }
  }

  Future<void> signInUser() async {
    try {
      emit(AuthCubitLoading());
      await authRepo.signInUserWithEmailAndPassword(
          email: email!, password: password!);

      if (FirebaseAuth.instance.currentUser!.emailVerified) {
        emit(AuthCubitSuccess(msg: "Successfully User Signed In"));
      } else {
        emit(AuthCubitFailure(msg: "You Must Verify Your Email Account"));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(AuthCubitFailure(msg: "No user found for that email."));
      } else if (e.code == 'wrong-password') {
        emit(AuthCubitFailure(msg: "Wrong password provided for that user."));
      } else {
        emit(AuthCubitFailure(msg: "Check Your Email Or Password"));
      }
    }
  }

  Future<void> verifyEmailAccont() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  Future<void> resetPasswod() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
  }

  Future<void> createUserProfile() async {
    final userCollection = FirebaseFirestore.instance.collection('user');
    await userCollection.add({
      "first_Name": firstName,
      "last_Name": lastName,
      "email": email,
      "image": Assets.assetsImagesPicture
    });
  }
}
