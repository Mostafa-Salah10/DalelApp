part of 'home_cubit_cubit.dart';

sealed class HomeCubitState {}

final class HomeCubitInitial extends HomeCubitState {}

final class HomeCubitHistoricalPeriodsLoading extends HomeCubitState {}

final class HomeCubitHistoricalPeriodsSuccess extends HomeCubitState {}

final class HomeCubitHistoricalPeriodsFailure extends HomeCubitState {
  final String msg;
  HomeCubitHistoricalPeriodsFailure({required this.msg});
}
