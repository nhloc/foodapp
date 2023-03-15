import 'package:flutter/material.dart';
import 'package:foodapp/state_management/core/master/constants.dart';
import 'package:foodapp/state_management/presentation/restaurant/restaurant_detailscreen.dart';
import 'package:get/get.dart';

class RestaurantPageView extends StatelessWidget {
  const RestaurantPageView(
      {super.key,
      required this.image,
      required this.name,
      required this.address});
  final String? image;
  final String? name;
  final String? address;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              image!,
            )),
        TextButton(
            onPressed: () {
              Get.to(RestaurantDetailScreen(name: name!, address: address!, image: image!,));
            },
            child: Text(
              name!,
              style: const TextStyle(fontSize: defaultFontSize16),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            address!,
            style: const TextStyle(fontSize: defaultFontSize16),
          ),
        ),
        const SizedBox(height: 15)
      ],
    );
  }
}
