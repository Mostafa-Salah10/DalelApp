import 'package:dalel/features/auth/data/repository/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signInUserWithEmailAndPassword(
      {required String email, required String password}) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }
  
}
