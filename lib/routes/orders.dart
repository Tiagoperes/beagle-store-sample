import 'package:beagle/beagle.dart';
import 'package:flutter/widgets.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key, this.orderId}) : super(key: key);

  final String? orderId;

  @override
  Widget build(BuildContext context) {
    return RootNavigator(initialRoute: RemoteView('/order/$orderId'), screenBuilder: (widget, _) => widget);
  }
}
