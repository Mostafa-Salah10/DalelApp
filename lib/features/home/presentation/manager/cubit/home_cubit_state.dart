part of 'home_cubit_cubit.dart';

sealed class HomeCubitState {}

final class HomeCubitInitial extends HomeCubitState {}

final class HomeCubitHistoricalPeriodsLoading extends HomeCubitState {}

final class HomeCubitHistoricalPeriodsSuccess extends HomeCubitState {}

final class HomeCubitHistoricalPeriodsFailure extends HomeCubitState {
  final String msg;
  HomeCubitHistoricalPeriodsFailure({required this.msg});
}

final class HomeCubitHistoricalCharsLoading extends HomeCubitState {}

final class HomeCubitHistoricalCharsSuccess extends HomeCubitState {}

final class HomeCubitHistoricalCharsFailure extends HomeCubitState {
  final String msg;
  HomeCubitHistoricalCharsFailure({required this.msg});
}

final class HomeCubitHistoricalSouvenirsLoading extends HomeCubitState {}

final class HomeCubitHistoricalSouvenirsSuccess extends HomeCubitState {}

final class HomeCubitHistoricalSouvenirsFailure extends HomeCubitState {
  final String msg;
  HomeCubitHistoricalSouvenirsFailure({required this.msg});
}
