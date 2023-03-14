import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/state_management/core/master/master_data.dart';
import 'package:foodapp/state_management/presentation/food/food_pageview.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List food = [];

  Future<void> readJson() async {
    final jsonData = await rootBundle.loadString(UIData.foodata);
    final data = await json.decode(jsonData);
    setState(() {
      food = data["food"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: FoodPageView(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Row(children: const [
                Text(
                  'Featured Partners',
                  style: TextStyle(fontSize: 18),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
