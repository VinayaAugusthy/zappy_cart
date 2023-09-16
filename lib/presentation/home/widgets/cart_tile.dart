// ignore_for_file: must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:zappy_cart/applications/bloc/cart_bloc.dart';
import 'package:zappy_cart/applications/bloc/cart_state.dart';
import 'package:zappy_cart/core/colors/colors.dart';
import 'package:zappy_cart/core/constants/constants.dart';

class CartTile extends StatelessWidget {
  final CartBloc cartBloc;
  CartTile({
    super.key,
    required this.size,
    required this.assetImage,
    required this.title,
    required this.price,
    required this.quantity,
    required this.cartBloc,
    required this.cartQuantity,
  });

  final Size size;
  final AssetImage assetImage;
  final String title;
  final String price;
  String quantity;
  final String cartQuantity;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Expanded(
          child: ListTile(
            leading: CircleAvatar(radius: 30, backgroundImage: assetImage),
            title: textBody(title, 18, FontWeight.normal),
            subtitle: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.26,
                      child: textBody('\$$price', 18, FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        textBody(quantity, 18, FontWeight.normal),
                        // getHorizontalSpace(size.width * 0.1),
                        SizedBox(
                          width: size.height * 0.1,
                          height: size.height * 0.06,
                          child: InputQty(
                            isIntrinsicWidth: false,
                            maxVal: 9,
                            initVal: 1,
                            minVal: 0,
                            steps: 1,
                            boxDecoration: const BoxDecoration(
                                borderRadius: BorderRadius.zero),
                            borderShape: BorderShapeBtn.none,
                            plusBtn: const Icon(Icons.add_box),
                            minusBtn: const Icon(Icons.indeterminate_check_box),
                            btnColor1: appColor,
                            btnColor2: appColor,
                            onQtyChanged: (val) {
                              if (kDebugMode) {
                                print(val);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
