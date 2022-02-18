import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  ProductItem({
    required this.image,
    required this.title,
    required this.price,
    required this.inCart,
    required this.onPressBuy,
    required this.onPressDetails,
  });

  final String image;
  final String title;
  final String price;
  final bool? inCart;
  final void Function() onPressDetails;
  final void Function() onPressBuy;

  Widget _buildInCartWidget() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('In cart', style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold)),
      Padding(child: Icon(Icons.check, color:  Colors.green), padding: EdgeInsets.fromLTRB(6, 12, 0, 12)),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(child: InkWell(onTap: onPressDetails, child: Column(children: [
            Padding(
                child: Image.network(image, height: 100),
                padding: EdgeInsets.only(bottom: 15)
            ),
            Expanded(child: Text(title, overflow: TextOverflow.ellipsis, maxLines: 3, textAlign: TextAlign.center)),
            Padding(
              child: Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
          ]))),
          inCart == true
            ? _buildInCartWidget()
            : ElevatedButton(child: Text('Add to cart'), onPressed: onPressBuy)
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
