abstract class AuthRepo {
  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signInUserWithEmailAndPassword(
      {required String email, required String password});
}
