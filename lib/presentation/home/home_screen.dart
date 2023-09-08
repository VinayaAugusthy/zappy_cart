import 'package:flutter/material.dart';
import 'package:zappy_cart/core/colors/colors.dart';
import 'package:zappy_cart/core/constants/constants.dart';
import 'package:zappy_cart/presentation/home/widgets/cart_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 157, 64),
          title: const Text(
            'Zappy',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: const [
            Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 40,
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white38,
            labelColor: whiteColor,
            indicatorColor: whiteColor,
            tabs: [
              tabs(
                Icons.home_outlined,
                'Shop',
              ),
              tabs(
                Icons.shopping_basket_outlined,
                'Items',
              ),
              tabs(
                Icons.shopping_bag_outlined,
                'Bag',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(size.width * 0.03),
          child: TabBarView(
            children: [
              Center(
                child: textBody('Shop', 20, FontWeight.bold),
              ),
              Center(
                child: textBody('Items', 20, FontWeight.bold),
              ),
              ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.1,
                    ),
                    child: Container(
                      color: Colors.lightGreenAccent,
                      height: size.height * 0.6,
                      width: size.width * 0.6,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.02,
                          right: size.width * 0.02,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getVerticalSpace(20),
                            textBody('Cart(2)', 20, FontWeight.bold),
                            getVerticalSpace(10),
                            const Divider(
                              color: Colors.black,
                            ),
                            getVerticalSpace(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textBody('Grand Total', 20, FontWeight.bold),
                                Text(
                                  '\$259.00',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: appColor,
                                  ),
                                ),
                              ],
                            ),
                            textBody(
                              'There might be a change in the final bill which will be generated from the shop',
                              16,
                              FontWeight.normal,
                            ),
                            CartTile(
                              size: size,
                              assetImage:
                                  const AssetImage('assets/images/ga.jpeg'),
                              title: 'Green Apple',
                              price: '182.00',
                              quantity: '1 Kg',
                              cartQuantity: '1',
                            ),
                            CartTile(
                              size: size,
                              assetImage:
                                  const AssetImage('assets/images/apple.jpeg'),
                              title: 'Apple',
                              price: '92.00',
                              quantity: '500 g',
                              cartQuantity: '1',
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                textBody(
                                  'Add More Items',
                                  20,
                                  FontWeight.bold,
                                ),
                                const Icon(Icons.add)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  getVerticalSpace(20),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      right: size.width * 0.08,
                    ),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.25,
                      color: whiteColor,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.05,
                          right: size.width * 0.05,
                          top: size.width * 0.03,
                        ),
                        child: textBody(
                          'Add products worth \$25 to avail coupon',
                          16,
                          FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  getVerticalSpace(20),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      right: size.width * 0.08,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            appColor, // Set the background color of the button
                      ),
                      onPressed: () {},
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Tab tabs(
    IconData icon,
    String text,
  ) {
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 30,
          ),
          getHorizontalSpace(10),
          SizedBox(
            // width: size.width * 0.3,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
