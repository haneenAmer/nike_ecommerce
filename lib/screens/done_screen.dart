import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nike_ecommerce/widgets/widgts.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            header(context),
            Center(
              child: Lottie.asset('assets/Animation.json'),
            ),
            const Center(
              child: Text(
                'Order has been placed',
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
