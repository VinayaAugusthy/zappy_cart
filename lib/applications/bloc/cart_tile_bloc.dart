import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_tile_event.dart';
import 'cart_tile_state.dart';

class CartTileBloc extends Bloc<CartTileEvent, CartTileState> {
  CartTileBloc() : super(CartTileState(0));

  Stream<CartTileState> mapEventToState(CartTileEvent event) async* {
    if (event is IncrementCartTileEvent) {
      yield CartTileState(state.quantity + 1);
    } else if (event is DecrementCartTileEvent) {
      yield CartTileState(state.quantity - 1);
    }
  }
}
