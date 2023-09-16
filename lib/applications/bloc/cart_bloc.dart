// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:zappy_cart/applications/bloc/cart_state.dart';

part 'cart_event.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoaded()) {
    on<AddToCartEvent>((event, emit) {
      return emit(CartState(cartQuantity: state.cartQuantity + 1));
    });
    on<RemoveFromCartEvent>((event, emit) {
      return emit(CartState(cartQuantity: state.cartQuantity - 1));
    });
  }
}
