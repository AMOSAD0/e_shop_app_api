import 'package:e_shop_app/Screens/loginScreen/loginScreen.dart';
import 'package:e_shop_app/Screens/on_boardingScreen/on_boardingScreen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(E_shopApp());
}

class E_shopApp extends StatelessWidget {
  const E_shopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
