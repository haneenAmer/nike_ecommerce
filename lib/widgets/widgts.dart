import 'package:flutter/material.dart';

/// remove blue light
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

SizedBox cateories() {
  return SizedBox(
      height: 150,
      width: double.infinity,
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 8),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 202, 200, 200),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffF9F9F9),
                            Color(0xffF1F1F1),
                          ],
                        )),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                const Text(
                                  'NIKE',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text('Air max 1 '),
                                addToCardButton()
                              ],
                            ),
                          ),
                          const Image(image: AssetImage('assets/blueshoe.png'))
                        ]),
                  ),
                ],
              );
            }),
      ));
}

TextButton addToCardButton() {
  return TextButton(
    onPressed: () {},
    child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffFFB301)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'add to',
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 18,
              color: Colors.white,
            )
          ],
        )),
  );
}
