import 'package:flutter/material.dart';
import 'package:foodapp/state_management/core/master/constants.dart';
import 'package:foodapp/state_management/presentation/restaurant/restaurant_pageview.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key, required this.title, required this.data});
  final String? title;
  final List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(title!), backgroundColor: kMainColor),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
              child: RestaurantPageView(
                  image: data[index]["image"],
                  name: data[index]["name"],
                  address: data[index]["address"]),
            );
          }),
    );
  }
}
