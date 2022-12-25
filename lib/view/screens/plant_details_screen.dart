import 'package:flutter/material.dart';

import '../../core/config/color_utils.dart';
import 'order_placement_confirmation_screen.dart';

class PlantDetailsScreen extends StatefulWidget {
  final String photoLink, plantName, category, price;
  const PlantDetailsScreen({
    Key? key,
    required this.photoLink,
    required this.plantName,
    required this.category,
    required this.price,
  }) : super(key: key);

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Container(
                color: kFillingGreen,
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: kSimpleGreen,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: kSimpleGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 33,
              bottom: 140,
              left: 0,
              right: 0,
              child: Container(
                color: kFillingGreen,
                child: Image.asset(
                  widget.photoLink,
                  height: 55,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.6,
              minChildSize: 0.2,
              builder: (context, scrollController) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                color: Colors.white,
                child: ListView(
                  controller: scrollController,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "\t${widget.plantName}",
                              style: TextStyle(
                                color: kDarkestGreen,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${widget.price}\$',
                              style: TextStyle(
                                color: kSimpleGreen,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            color: kDarkestGreen,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "2",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                        color: kDarkestGreen,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc faucibus ex id neque euismod, faucibus vestibulum dolor euismod. Integer eu ultrices libero. Suspendisse et nunc mollis elit feugiat sodales a et libero. Vivamus vitae ex vestibulum, placerat diam eget, iaculis neque. Etiam aliquam augue id urna egestas"
                      ", sed tempor ex consectetur.Vivamus semper dolor viverra elit interdum, ut tempor sem rhoncus. Nullam enim nulla, consectetur ac augue non, commodo pellentesque tortor.",
                      style: TextStyle(
                        color: kDarkestGreen,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.3),
                            child: Icon(
                              Icons.shop_2,
                              color: kDarkestGreen,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 240,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const OrderPlacementConfirmationScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kDarkestGreen,
                            ),
                            child: const Text(
                              "Order now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
