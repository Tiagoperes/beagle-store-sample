import 'package:beagle_components/beagle_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTheme extends BeagleTheme {
  final Map<String, TextStyle> textMap = {
    'price': TextStyle(
      fontSize: 18,
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
  };

  @override
  TextStyle textStyle(String id) {
    return textMap[id] ?? TextStyle();
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}