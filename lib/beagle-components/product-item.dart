import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  ProductItem({
    required this.image,
    required this.title,
    required this.price,
    required this.onPressBuy,
    required this.onPressDetails,
  });

  final String image;
  final String title;
  final String price;
  final Function onPressDetails;
  final Function onPressBuy;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(image, height: 80),
          Container(
            child: Text(title, overflow: TextOverflow.ellipsis, maxLines: 2),
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
        ],
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kElevationToShadow[1],
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
