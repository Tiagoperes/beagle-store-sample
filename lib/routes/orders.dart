import 'package:flutter/widgets.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key, this.orderId}) : super(key: key);

  final String? orderId;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Order: $orderId'));
  }
}
