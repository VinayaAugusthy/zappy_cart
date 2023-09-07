import 'package:flutter/material.dart';
import 'package:zappy_cart/core/colors/colors.dart';
import 'package:zappy_cart/core/constants/constants.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.size,
    required this.assetImage,
    required this.title,
    required this.price,
    required this.quantity,
    required this.cartQuantity,
  });

  final Size size;
  final AssetImage assetImage;
  final String title;
  final String price;
  final String quantity;
  final String cartQuantity;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 30, backgroundImage: assetImage),
      title: textBody(title, 18, FontWeight.normal),
      subtitle: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textBody('\$$price', 18, FontWeight.bold),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  textBody(quantity, 18, FontWeight.normal),
                  getHorizontalSpace(size.width * 0.09),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle,
                          color: appColor,
                        ),
                      ),
                      textBody(cartQuantity, 20, FontWeight.bold),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_box_rounded,
                          color: appColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
