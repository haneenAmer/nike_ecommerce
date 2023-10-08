import 'dart:math';
import 'package:flutter/material.dart';
import 'package:nike_ecommerce/widgets/widgts.dart';

class TransformmationFunction extends StatefulWidget {
  final String urlleft;
  final String urlright;

  const TransformmationFunction({
    Key? key,
    required this.urlleft,
    required this.urlright,
  }) : super(key: key);

  @override
  State<TransformmationFunction> createState() =>
      _TransformmationFunctionState();
}

class _TransformmationFunctionState extends State<TransformmationFunction>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  bool isleft = true;
  double dragPosition = 0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    controller.addListener(() {
      setState(() {
        dragPosition = animation.value;
        setImageSide();
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final angle = dragPosition / 180 * pi;
    final transform = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateY(angle);
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          dragPosition += details
              .delta.dx; // Correct the delta type based on your requirement
          dragPosition %= 360;
          setImageSide();
        });
      },
      onHorizontalDragEnd: (details) {
        double end = isleft ? (dragPosition > 180 ? 360 : 0) : 180;
        animation = Tween<double>(
          begin: dragPosition,
          end: end,
        ).animate(controller);
        controller.forward(from: 0);
      },
      child: Transform(
        transform: transform,
        alignment: Alignment.center,
        child: isleft
            ? Image.asset(widget.urlleft)
            : Transform(
                transform: Matrix4.identity()..rotateX(pi),
                alignment: Alignment.center,
                child: Image.asset(widget.urlright),
              ),
      ),
    );
  }

  void setImageSide() {
    if (dragPosition <= 90 || dragPosition >= 270) {
      isleft = true;
    } else {
      isleft = true;
    }
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: buyingButtonWihOtShoppingIcon(context)),
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
          const Expanded(
            flex: 1,
            child: TransformmationFunction(
              urlright: 'assets/onboarding.png',
              urlleft: 'assets/onboarding1.png',
            ),
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
      ),
    );
  }
}
