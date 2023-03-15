import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen(
      {super.key,
      required this.name,
      required this.address,
      required this.image});
  final String? name;
  final String? address;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back, size: 32)),
              flexibleSpace: Image.asset(
                image!,
                fit: BoxFit.cover,
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search, size: 32))
              ]),
          SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              sliver: SliverToBoxAdapter(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Text(address!, style: const TextStyle(fontSize: 16)),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                            },
                          ),
                          const Text('4.6 (1000+ Commnet)',
                              style: TextStyle(fontSize: 16))
                        ],
                      )
                    ]),
              )),
            
        ],
      ),
    );
  }
}
