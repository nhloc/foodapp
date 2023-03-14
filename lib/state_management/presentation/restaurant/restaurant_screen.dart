import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key, required this.title, required this.data});
  final String? title;
  final List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(title!), backgroundColor: Colors.deepOrangeAccent),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                      aspectRatio: 1.5,
                      child: Image.asset(
                        data[0]["image"],
                      )),
                  Text(
                    data[0]["name"],
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    data[0]["Address"],
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
