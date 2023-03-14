import 'package:flutter/material.dart';
import 'package:foodapp/state_management/presentation/food/food_screen.dart';
import 'package:foodapp/state_management/presentation/home/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Fast Food Delivery'), backgroundColor: Colors.deepOrange,),
        body: const FoodScreen());
  }
}
