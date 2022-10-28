import 'package:flutter/material.dart';
import 'package:plant_app_mvvm/view/screens/cart_screen.dart';

import '/view/screens/plant_details_screen.dart';
import '/core/color_utils.dart';
import '/core/hint_style_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: kSimpleGreen,
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartScreen(),
                        ),
                      );
                    },
                    icon: CircleAvatar(
                      backgroundColor: kSimpleGreen,
                      child: const Icon(
                        Icons.shop,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "\tLet's find new\n plants!",
                    style: TextStyle(
                      color: kDarkestGreen,
                      fontSize: 28.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: kSimpleGreen,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: kSimpleGreen,
                    ),
                    hintText: "Search plant",
                    hintStyle: hintStyle,
                    filled: true,
                    fillColor: kFillingGreen,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 11.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Chip(
                    backgroundColor: kFillingGreen,
                    label: Text(
                      "Recommended",
                      style: TextStyle(
                        color: kSimpleGreen,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "Top",
                    style: hintStyle,
                  ),
                  Text(
                    "Indoor",
                    style: hintStyle,
                  ),
                  Text(
                    "Outdoor",
                    style: hintStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // debugPrint("Is tapped");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PlantDetailsScreen(
                                photoLink:
                                    "assets/images/3-32232_indoor-plants-png-transparent-indoor-plant-png.png",
                                plantName: "Peace Lily",
                                category: "Indoor",
                                price: "10.00",
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                bottom: 95.0,
                              ),
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/images/3-32232_indoor-plants-png-transparent-indoor-plant-png.png",
                                height: 190,
                                width: 140,
                              ),
                            ),
                            Container(
                              height: 210,
                              width: 170,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.green.withOpacity(0.2),
                                    Colors.teal.withOpacity(0.3),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Wrap(
                                direction: Axis.vertical,
                                children: <Widget>[
                                  const SizedBox(
                                    height: 158,
                                  ),
                                  Text(
                                    "\tIndoor",
                                    style: TextStyle(color: kDarkestGreen),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Wrap(
                                    direction: Axis.horizontal,
                                    children: [
                                      Text(
                                        "\tPeace lily",
                                        style: TextStyle(color: kDarkestGreen),
                                      ),
                                      const SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '10\$',
                                        style: TextStyle(color: kDarkestGreen),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PlantDetailsScreen(
                                photoLink:
                                    "assets/images/beautiful-transparent-plants-image-30.png",
                                plantName: "Peace Lily",
                                category: "Indoor",
                                price: "10.00",
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                bottom: 90.0,
                              ),
                              color: Colors.transparent,
                              child: Image.asset(
                                "assets/images/beautiful-transparent-plants-image-30.png",
                                height: 210,
                              ),
                            ),
                            Container(
                              height: 210,
                              width: 170,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.green.withOpacity(0.2),
                                    Colors.teal.withOpacity(0.3),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Wrap(
                                direction: Axis.vertical,
                                children: <Widget>[
                                  const SizedBox(
                                    height: 158,
                                  ),
                                  Text(
                                    "\tIndoor",
                                    style: TextStyle(color: kDarkestGreen),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Wrap(
                                    direction: Axis.horizontal,
                                    children: [
                                      Text(
                                        "\tPeace lily",
                                        style: TextStyle(color: kDarkestGreen),
                                      ),
                                      const SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        '15\$',
                                        style: TextStyle(
                                          color: kDarkestGreen,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
