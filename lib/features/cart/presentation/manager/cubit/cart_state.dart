part of 'cart_cubit.dart';

sealed class CartState {}

final class CartInitial extends CartState {}

final class CartPeroidsLoadingState extends CartState {}

final class CartPeroidsSuccessState extends CartState {}

final class CartPeroidsFailureState extends CartState {
  final String msg;
  CartPeroidsFailureState({required this.msg});
}

final class CartBooksLoadingState extends CartState {}

final class CartBooksSuccessState extends CartState {}

final class CartBooksFailureState extends CartState {
  final String msg;
  CartBooksFailureState({required this.msg});
}

final class CartSouvinersLoadingState extends CartState {}

final class CartSouvinersSuccessState extends CartState {}

final class CartSouvinersFailureState extends CartState {
  final String msg;
  CartSouvinersFailureState({required this.msg});
}

final class CartUserLoadingState extends CartState {}

final class CartUserSuccessState extends CartState {}

final class CartUserFailureState extends CartState {
  final String msg;
  CartUserFailureState({required this.msg});
}

final class CartAddedLoadingState extends CartState {}

final class CartAddedSuccessState extends CartState {}

final class CartAddedFailureState extends CartState {
  final String msg;
  CartAddedFailureState({required this.msg});
}

final class CartIncrementState extends CartState {}
final class CartDecrementtState extends CartState {}
final class CartToggelCheckBoxValueState extends CartState {}
final class CartGetTotalPriceValueState extends CartState {}
final class CartChangeGroupValueState extends CartState {}

