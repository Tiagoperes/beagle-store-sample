import 'package:flutter/material.dart';

class Spinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Center(child: CircularProgressIndicator(
      semanticsLabel: 'Progress indicator',
    )));
  }
}
