import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:firebase_auth/firebase_auth.dart';

void checkAuthStateChanges() async {
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      debugPrint("User is currently signed out!");
    } else {
      debugPrint('User is signed in!');
    }
  });
}
