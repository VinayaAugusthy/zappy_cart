// ignore_for_file: overridden_fields

part of 'cart_bloc.dart';

@immutable
sealed class CartState {
  final List<CartItem> cartItems;

  const CartState({required this.cartItems});
}

class CartLoadedState extends CartState {
  final List<CartItem> cartItems;

  CartLoadedState(this.cartItems) : super(cartItems: []);
}
