import 'package:flutter/material.dart';

import '../../../core/master/constants.dart';

class RestaurantFoodScreen extends StatelessWidget {
  const RestaurantFoodScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.numberlike,
      required this.price});
  final String? image;
  final String? name;
  final String? numberlike;
  final String? price;

  

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 193, 210, 240),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
              width: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Image.asset(image!),
              )),
          SizedBox(
            height: 120,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text(name!), Text(price!)],
              ),
            ),
          ),
          ElevatedButton(
            child: Text("+",
                style: TextStyle(fontSize: 24), textAlign: TextAlign.center),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: kMainColor,
                fixedSize: const Size(20, 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  20,
                ))),
          )
        ]));
  }
}
