import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_ecommerce/constants/colors.dart';
import 'package:nike_ecommerce/widgets/widgts.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedSize = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(padding: const EdgeInsets.all(12.0), child: header()),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Text(
                'Nike Blazer Mide 97',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text('Constimizd by Alex'),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Container(
            height: 180,
            width: 500,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0)),
                color: AppColors.mainamber),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Material :',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'TextTile',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Coloe shown: White/Total Orange/Purple',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Size',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Row(
                    children: [
                      for (int size in [36, 38, 39, 40])
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = size;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: (size == selectedSize)
                                    ? Colors.amber
                                    : const Color.fromARGB(255, 225, 217, 217),
                              ),
                              margin: const EdgeInsets.only(top: 10),
                              width: 40,
                              height: 40,
                              child: Center(
                                child: Text(
                                  size.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: (size == selectedSize)
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Free delivery with your Nike Membership ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Nike Membership',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //     Container(
              //       height: 55,
              //       width: 180,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Colors.black,
              //       ),
              //       child: const Padding(
              //         padding: EdgeInsets.all(15.0),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.all(5.0),
              //               child: Image(image: AssetImage('assets/nike.png')),
              //             ),
              //             Text(
              //               'Membrshep',
              //               style: TextStyle(color: Colors.white),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ]),
      Container(
          margin: EdgeInsets.all(5),
          alignment: Alignment.bottomCenter,
          child: buyingButton(context)),
      const Positioned(
        bottom: 230,
        left: 20,
        child: Image(
            image: AssetImage(
          'assets/pur.png',
        )),
      ),
    ])));
  }
}
