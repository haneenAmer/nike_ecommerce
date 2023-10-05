import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_ecommerce/constants/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color containerColor1 = Colors.grey;
    Color containerColor2 = Colors.grey;
    Color containerColor3 = Colors.grey;
    Color containerColor4 = Colors.grey;
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
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
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: SvgPicture.asset(
                      'assets/menu.svg',
                      // width: 60,
                      // height: 60,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
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
                  child: const Icon(Icons.grid_view),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
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
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              SizedBox(
                height: 12,
              ),
              Text(
                'Coloe shown: White/Total Orange/Purple',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    'Size',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      setSta containerColor1 = Colors.amber;
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      color: containerColor1,
                      child: Center(child: Text('36')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
      const Positioned(
        bottom: 200,
        left: 20,
        child: Image(
            image: AssetImage(
          'assets/pur.png',
        )),
      ),
    ])));
  }
}
