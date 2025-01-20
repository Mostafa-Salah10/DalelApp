part of 'auth_cubit_cubit.dart';

abstract class AuthCubitState {}

final class AuthCubitInitial extends AuthCubitState {}

final class AuthCubitCheckBox extends AuthCubitState {}

final class AuthCubitLoading extends AuthCubitState {}

final class AuthCubitSuccess extends AuthCubitState {
  final String msg;
  AuthCubitSuccess({required this.msg});
}

final class AuthCubitFailure extends AuthCubitState {
  final String msg;
  AuthCubitFailure({required this.msg});
}
