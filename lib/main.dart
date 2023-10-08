import 'package:flutter/material.dart';
import 'package:nike_ecommerce/screens/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Signin());
  }
}
