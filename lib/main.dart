import 'package:flutter/material.dart';
import 'package:myplasticpays/Screens/Onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/LoginScreen.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final prefs =await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome')??false;

  runApp(MyApp(showHome:showHome));

}
class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key?key,required this.showHome,}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: showHome?LoginScreen(): OnboardingScreen(),
    );
  }
}
