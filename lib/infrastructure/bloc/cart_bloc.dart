// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:zappy_cart/domain/cart/cart_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoadedState(const [])) {
    on<AddToCartEvent>((event, emit) {
      final updatedCart = List<CartItem>.from(state.cartItems);
      updatedCart.add(event.item);
      return emit(CartLoadedState(updatedCart));
    });
    on<RemoveFromCartEvent>((event, emit) {
      final updatedCart = List<CartItem>.from(state.cartItems);
      updatedCart.remove(event.item);
      return emit(CartLoadedState(updatedCart));
    });
  }
}
