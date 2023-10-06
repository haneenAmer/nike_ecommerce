import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_ecommerce/constants/colors.dart';
import 'package:nike_ecommerce/screens/details_screen.dart';
import 'package:nike_ecommerce/screens/done_screen.dart';

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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DetailsScreen()));
                    },
                    child: Container(
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Image(
                                  image: AssetImage('assets/blueshoe.png')),
                            )
                          ]),
                    ),
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
            borderRadius: BorderRadius.circular(8), color: AppColors.mainamber),
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

Row titleAndSeeMoreHead(String catgoriesNameHeads) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        catgoriesNameHeads,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const Text(
        'see more',
        style: TextStyle(
          fontSize: 15,
          color: AppColors.mainamber,
        ),
      ),
    ],
  );
}

Container buyingButton(context) {
  return Container(
    height: 70,
    width: 400,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xffEEEEEE),
          Color.fromARGB(255, 203, 202, 202),
        ],
      ),
      borderRadius: BorderRadius.circular(40),
    ),
    // color: Color.fromARGB(255, 201, 198, 198)),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DoneScreen()));
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.mainamber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SvgPicture.asset(
                'assets/play.svg',
              ),
            ),
          ),
        ),
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: const Icon(
              Icons.shopping_bag,
              color: AppColors.mainamber,
            )),
      ]),
    ),
  );
}

Row header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: SvgPicture.asset(
              'assets/menu.svg',
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('assets/didi.png'),
              ),
            )),
      ),
    ],
  );
}
