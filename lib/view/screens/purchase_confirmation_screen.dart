import 'package:flutter/material.dart';
import 'package:plant_app_mvvm/core/config/color_utils.dart';

import 'home_screen.dart';

class PurchaseConfirmationScreen extends StatefulWidget {
  const PurchaseConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseConfirmationScreen> createState() =>
      _PurchaseConfirmationScreenState();
}

class _PurchaseConfirmationScreenState
    extends State<PurchaseConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkestGreen,
        body: Container(
          alignment: Alignment.center,
          child: Container(
            width: size.width * 0.80,
            height: size.height * 0.7,
            padding: const EdgeInsets.only(
              top: 100,
              left: 18.0,
              right: 18.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: ListView(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: kDarkestGreen!),
                  ),
                  child: Icon(
                    Icons.done,
                    size: 90,
                    color: kDarkestGreen,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Purchase Successfully Made",
                  style: TextStyle(
                    color: kDarkestGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Your order was placed successfully"
                  ", just wait and you'll have your order at"
                  " your door step.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 230,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kDarkestGreen,
                    ),
                    child: const Text(
                      "See more",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {
                    // debugPrint("I am pressed");
                    Navigator.pop(context);
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                      color: kSimpleGreen,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
