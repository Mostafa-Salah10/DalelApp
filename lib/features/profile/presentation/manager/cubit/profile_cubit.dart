import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/profile/data/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  UserModel? user;
  Future<void> fetchUser() async {
    final auth = FirebaseAuth.instance.currentUser;
    try {
      emit(ProfileLoadingState());
      await FirebaseFirestore.instance
          .collection('user')
          .where('email', isEqualTo: auth!.email)
          .get()
          .then((value) {
        value.docs.forEach((element) {
          user = UserModel.fromJason(user: element.data());
          emit(ProfileSuccessState());
        });
      });
    } catch (e) {
      emit(ProfileFailureState(msg: e.toString()));
    }
  }
}
