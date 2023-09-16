class CartState {
  int cartQuantity;
  CartState({required this.cartQuantity});
}

class CartLoaded extends CartState {
  CartLoaded() : super(cartQuantity: 1);
}
