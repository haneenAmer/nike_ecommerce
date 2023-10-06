import 'package:flutter/material.dart';
import 'package:nike_ecommerce/screens/login_screen.dart';
import 'package:nike_ecommerce/screens/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
