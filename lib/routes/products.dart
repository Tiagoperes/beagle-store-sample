import 'package:beagle/beagle.dart';
import 'package:flutter/widgets.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RootNavigator(initialRoute: RemoteView('/products'), screenBuilder: (widget, _) => widget);
  }
}
