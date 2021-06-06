import 'package:flutter/material.dart';

import 'package:ui_challenge_internal/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InternalHomeScreen(),
    );
  }
}