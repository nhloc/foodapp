import 'package:flutter/material.dart';

class FoodCardView extends StatelessWidget {
  const FoodCardView({super.key, required this.image, required this.name, required this.address});
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
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                address!,
                style: const TextStyle(fontSize: 16),
              )
            ])),
      ],
    );
  }
}
