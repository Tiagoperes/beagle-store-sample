
import 'package:beagle/beagle.dart';
import 'package:flutter/material.dart';
import 'package:sample/beagle.dart';

import 'main-navigator.dart';

void main() {
  runApp(BeagleProvider(
    beagle: beagleService,
    child: MaterialApp(
      title: 'Beagle Sample',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        indicatorColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
      home: MainNavigator(),
    ),
  ));
}
