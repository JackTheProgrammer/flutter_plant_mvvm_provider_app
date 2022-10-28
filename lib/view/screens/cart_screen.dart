import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Consumer;

import '/core/color_utils.dart';
import '/view_model/cart_view_model.dart';
import '/view/screens/purchase_confirmation_screen.dart';
import '/view/widgets/cart_item_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: CircleAvatar(
                    backgroundColor: kFillingGreen,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kSimpleGreen,
                    ),
                  ),
                ),
                const Text("My Cart"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: kSimpleGreen,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Consumer<CartViewModel>(
              builder: (context, cartViewModel, _) => ListView(
                shrinkWrap: true,
                children: cartViewModel
                    .getAllItems()
                    .map(
                      (cartItem) => Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                          right: 18.0,
                          bottom: 40,
                        ),
                        child: CartItemWidget(
                          plantName: cartItem.plantName,
                          photoAssetLink: cartItem.photoAssetLink,
                          plantUniqueQuality: cartItem.plantUniqueQuality,
                          plantPrice: cartItem.plantPrice,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Subtotal:",
                    style: TextStyle(
                      color: kDarkestGreen,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '\$58.00',
                    style: TextStyle(
                      color: kDarkestGreen,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Shipping Cost:",
                    style: TextStyle(
                      color: kDarkestGreen,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '\$8.00',
                    style: TextStyle(
                      color: kDarkestGreen,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total:",
                    style: TextStyle(
                      color: kDarkestGreen,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$66.00',
                    style: TextStyle(
                      color: kDarkestGreen,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kDarkestGreen,
                  ),
                  onLongPress: () {
                    Navigator.pop(context);
                  },
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const PurchaseConfirmationScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Make purchase",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
