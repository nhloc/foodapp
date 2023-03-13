import 'package:flutter/material.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({super.key, this.text, this.image});

  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Text('FAST FOOD DELIVERY',
            style: TextStyle(
                fontSize: 24,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold)),
        Text(text!,
            style: const TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 255, 95, 46),
                fontWeight: FontWeight.bold)),
        const Spacer(flex: 5),
        Image.network(image!),
      ],
    );
  }
}
