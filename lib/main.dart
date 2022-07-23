import 'package:flutter/material.dart';

import 'Screens/QRScreen.dart';
import 'Screens/SplashScreen1.dart';
import 'Screens/MainScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
