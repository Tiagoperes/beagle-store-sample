import 'dart:convert';

import 'package:beagle/beagle.dart';
import 'main-navigator.dart';

Map<String, ActionHandler> actions = {
  'custom:updateCartIndicator': ({required action, required view, required element, required context}) {
    final navigatorState = context.findAncestorStateOfType<MainNavigatorState>();
    navigatorState?.updateCartCount(action.getAttributeValue('numberOfElementsInCart', 0));
  }
};