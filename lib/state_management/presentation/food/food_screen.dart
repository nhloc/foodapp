import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/state_management/core/master/master_data.dart';
import 'package:foodapp/state_management/presentation/food/food_cardview.dart';
import 'package:foodapp/state_management/presentation/food/food_pageview.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List food = [];
  List bestchoice = [];
  List newstore = [];

  Future<void> readJson() async {
    final jsonData = await rootBundle.loadString(UIData.foodata);
    final data = await json.decode(jsonData);
    setState(() {
      food = data["food"];
      bestchoice = data["bestchoice"];
      newstore = data["newstore"];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Delivery To',
                  style: TextStyle(fontSize: 16, color: Colors.deepOrange)),
              Text('Can Tho City',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: FoodPageView(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Choice',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: const Text('See more'))
                  ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      bestchoice.length,
                      (index) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: FoodCardView(
                              image: bestchoice[index]["image"]!,
                              name: bestchoice[index]["name"]!,
                              address: bestchoice[index]["Address"]!)))),
            )),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New Restaurants',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: const Text('See more'))
                  ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                      bestchoice.length,
                      (index) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: FoodCardView(
                              image: newstore[index]["image"]!,
                              name: newstore[index]["name"]!,
                              address: newstore[index]["Address"]!)))),
            )),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'All Restaurants',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: const Text('See more'))
                  ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                      bestchoice.length,
                      (index) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: FoodCardView(
                              image: newstore[index]["image"]!,
                              name: newstore[index]["name"]!,
                              address: newstore[index]["Address"]!)))),
            )),
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 20)),
        ],
      ),
    );
  }
}
