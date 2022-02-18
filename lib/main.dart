import 'package:beagle/beagle.dart';
import 'package:beagle_components/beagle_components.dart';
import 'package:flutter/material.dart';
import 'package:sample/beagle.dart';
import 'package:sample/security.dart';
import 'package:sample/theme.dart';

import 'main-navigator.dart';

void main() async {
  await trustZscaler();
  runApp(BeagleProvider(
      beagle: beagleService,
      child: BeagleThemeProvider(
        theme: CustomTheme(),
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
      )));
}
