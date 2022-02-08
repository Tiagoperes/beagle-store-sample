import 'package:beagle/beagle.dart';
import 'package:flutter/widgets.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RootNavigator(initialRoute: RemoteView('/cart'), screenBuilder: (widget, _) => widget);
  }
}
