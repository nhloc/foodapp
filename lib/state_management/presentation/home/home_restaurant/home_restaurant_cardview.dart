import 'package:flutter/material.dart';

import '../../../core/master/constants.dart';

class HomeRestaurantCardView extends StatelessWidget {
  const HomeRestaurantCardView({super.key, required this.image, required this.name, required this.address});
  final String? image;
  final String? name;
  final String? address;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset(image!),
              ),
              Text(
                name!,
                style: const TextStyle(fontSize: defaultFontSize16),
              ),
              Text(
                address!,
                style: const TextStyle(fontSize: defaultFontSize16),
              )
            ])),
      ],
    );
  }
}
