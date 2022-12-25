import 'package:flutter/material.dart';

import '../../core/config/color_utils.dart';

class CartItemWidget extends StatefulWidget {
  final String plantName, photoAssetLink, plantUniqueQuality, plantPrice;
  const CartItemWidget({
    Key? key,
    required this.plantName,
    required this.photoAssetLink,
    required this.plantUniqueQuality,
    required this.plantPrice,
  }) : super(key: key);

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kFillingGreen,
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Row(
        children: [
          Image.asset(widget.photoAssetLink),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    widget.plantName,
                    style: TextStyle(
                      color: kDarkestGreen,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: kDarkestGreen,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 2,
                    ),
                    child: Text(
                      widget.plantUniqueQuality,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: kSimpleGreen,
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                          color: kSimpleGreen,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.remove,
                        color: kSimpleGreen,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  Text('${widget.plantPrice}\$'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
