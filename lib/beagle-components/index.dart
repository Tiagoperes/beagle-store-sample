import 'package:beagle/beagle.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/beagle-components/product-item.dart';
import 'package:sample/beagle-components/spinner.dart';

final Map<String, ComponentBuilder Function()> components = {
  'custom:spinner': () => _SpinnerBuilder(),
  'custom:productItem': () => _ProductItemBuilder(),
};

class _SpinnerBuilder extends ComponentBuilder {
  @override
  Widget buildForBeagle(_, __, ___) => Spinner();
}

class _ProductItemBuilder extends ComponentBuilder {
  @override
  StyleConfig getStyleConfig() => StyleConfig.disabled(shouldExpand: false);

  @override
  Widget buildForBeagle(element, __, ___) => ProductItem(
    image: element.getAttributeValue('image'),
    onPressBuy: element.getAttributeValue('onPressBuy'),
    onPressDetails: element.getAttributeValue('onPressDetails'),
    price: element.getAttributeValue('price'),
    title: element.getAttributeValue('title'),
  );
}
