import 'package:flutter/material.dart';
import 'package:nike_ecommerce/screens/transformation.dart';
import 'package:nike_ecommerce/widgets/widgts.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              print('hi from on boarding');
            },
            child: Container(
                alignment: Alignment.bottomCenter,
                child: buyingButtonWihOtShoppingIcon(context)),
          ),
        ),
        Image.asset('assets/BG.png'),
        Positioned(
          bottom: 580,
          left: 180,
          child: Container(
              height: 80,
              width: 80,
              child: Image.asset(
                'assets/nikeblack.png',
                fit: BoxFit.fill,
              )),
        ),
        const TransformmationFunction(
          urlright: 'assets/onboarding.png',
          urlleft: 'assets/onboarding1.png',
        ),
        Positioned(
            bottom: 130,
            left: 60,
            right: 60,
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/360.png'),
            )),
      ]),
    );
  }
}
