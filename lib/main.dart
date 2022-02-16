import 'dart:io' as io;

import 'package:beagle/beagle.dart';
import 'package:beagle_components/beagle_components.dart';
import 'package:flutter/material.dart';
import 'package:sample/beagle.dart';
import 'package:sample/theme.dart';

import 'main-navigator.dart';

class MyHttpOverrides extends io.HttpOverrides{
  @override
  io.HttpClient createHttpClient(io.SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (io.X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  io.HttpOverrides.global = new MyHttpOverrides();
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
