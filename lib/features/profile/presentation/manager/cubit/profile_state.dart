part of 'profile_cubit.dart';

sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileSuccessState extends ProfileState {}

final class ProfileLoadingState extends ProfileState {}

final class ProfileFailureState extends ProfileState {
  final String msg;
  ProfileFailureState({required this.msg});
}
