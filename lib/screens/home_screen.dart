import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_ecommerce/screens/onboarding.dart';
import 'package:nike_ecommerce/screens/transformation.dart';

import 'package:nike_ecommerce/widgets/widgts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(context),

                    //// search section
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          alignment: Alignment.centerLeft,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'search for shoes',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFB301),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: const Icon(
                            Icons.tune,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //// images slideshow
                    SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Container(
                                height: 180,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:
                                      const Color.fromARGB(255, 202, 200, 200),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: ImageSlideshow(
                                      indicatorColor: const Color(0xffFFB301),
                                      onPageChanged: (value) {
                                        debugPrint('Page changed: $value');
                                      },
                                      autoPlayInterval: 3000,
                                      isLoop: true,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/sh1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/sh2.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ]),
                                )),
                          )),
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    /// logos section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SvgPicture.asset(
                        //   'assets/vector.svg',
                        //   width: 30,
                        //   height: 30,
                        // ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OnBoarding()));
                          },
                          child: Container(
                            height: 40,
                            width: 40,
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
                              child:
                                  Image(image: AssetImage('assets/puma.png')),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Image(image: AssetImage('assets/nike.png')),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
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
                          child: const Image(
                              image: AssetImage('assets/addidas.png')),
                        ),
                        // SvgPicture.asset(
                        //   'assets/vector.svg',
                        //   width: 30,
                        //   height: 30,
                        // ),
                      ],
                    ),
                    // Categories
                    const SizedBox(
                      height: 12,
                    ),

                    titleAndSeeMoreHead('Newes Showes'),
                    const SizedBox(
                      height: 12,
                    ),
                    cateories(),
                    const SizedBox(
                      height: 12,
                    ),
                    titleAndSeeMoreHead('Popular'),
                    const SizedBox(
                      height: 12,
                    ),
                    cateories(),
                    const SizedBox(
                      height: 12,
                    ),
                    titleAndSeeMoreHead('Best saller'),
                    const SizedBox(
                      height: 12,
                    ),
                    cateories(),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
