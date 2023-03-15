import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/state_management/core/master/constants.dart';
import 'package:foodapp/state_management/core/master/master_data.dart';
import 'package:foodapp/state_management/presentation/home/home_restaurant/home_restaurant_cardview.dart';
import 'package:foodapp/state_management/presentation/home/home_restaurant/home_restaurant_pageview.dart';
import 'package:foodapp/state_management/presentation/restaurant/restaurant_screen.dart';
import 'package:get/get.dart';



class HomeRestaurantScreen extends StatefulWidget {
  const HomeRestaurantScreen({super.key});

  @override
  State<HomeRestaurantScreen> createState() => _HomeRestaurantScreenState();
}

class _HomeRestaurantScreenState extends State<HomeRestaurantScreen> {
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
                  style: TextStyle(fontSize: defaultFontSize16, color: kMainColor)),
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
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal, vertical: defaultPaddingVertical),
            sliver: SliverToBoxAdapter(
              child: HomeRestaurantPageView(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
            sliver: SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Choice',
                      style:
                          TextStyle(fontSize: defaultFontSize18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(RestaurantScreen(
                            title: 'Best Choice',
                            data: newstore,
                          ));
                        },
                        child: const Text('See more'))
                  ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
            sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      bestchoice.length,
                      (index) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: HomeRestaurantCardView(
                              image: bestchoice[index]["image"]!,
                              name: bestchoice[index]["name"]!,
                              address: bestchoice[index]["address"]!)))),
            )),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
            sliver: SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New Restaurants',
                      style:
                          TextStyle(fontSize: defaultFontSize18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(RestaurantScreen(
                            title: 'New Restaurants',
                            data: newstore,
                          ));
                        },
                        child: const Text('See more'))
                  ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
            sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                      bestchoice.length,
                      (index) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: HomeRestaurantCardView(
                              image: newstore[index]["image"]!,
                              name: newstore[index]["name"]!,
                              address: newstore[index]["address"]!)))),
            )),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
            sliver: SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'All Restaurants',
                      style:
                          TextStyle(fontSize: defaultFontSize18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(RestaurantScreen(
                            title: 'All Restaurants',
                            data: newstore,
                          ));
                        },
                        child: const Text('See more'))
                  ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
            sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                      bestchoice.length,
                      (index) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: HomeRestaurantCardView(
                              image: newstore[index]["image"]!,
                              name: newstore[index]["name"]!,
                              address: newstore[index]["address"]!)))),
            )),
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 20)),
        ],
      ),
    );
  }
}
