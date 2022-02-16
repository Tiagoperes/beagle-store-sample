import 'package:beagle_components/beagle_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTheme extends BeagleTheme {
  final Map<String, TextStyle> textMap = {
    'H4': TextStyle(
      fontSize: 18,
    ),
    'paymentStatus': TextStyle(
      fontSize: 18,
      color: Colors.green,
    ),
    'inCart': TextStyle(
      color: Colors.green,
      fontSize: 20,
      fontWeight: FontWeight.bold
    ),
    'title': TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold
    ),
    'bold': TextStyle(
      fontWeight: FontWeight.bold,
    ),
  };

  final Map<String, String> images = {
    'check': 'images/check.png'
  };

  @override
  TextStyle textStyle(String id) {
    return textMap[id] ?? TextStyle();
  }

  @override
  ButtonStyle? buttonStyle(String id) {
    return null;
  }

  @override
  String? image(String id) {
    return images[id];
  }

  @override
  BeagleNavigationBarStyle? navigationBarStyle(String id) {
    return null;
  }
}
