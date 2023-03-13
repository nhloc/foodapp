import 'package:flutter/material.dart';
import 'package:foodapp/state_management/presentation/food/food_screen.dart';
import 'package:foodapp/state_management/presentation/home/home_controller.dart';
import 'package:foodapp/state_management/presentation/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Fast Food Delivery')), drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Information',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title:const Text('Infor'),
              //title: Obx(() => Text('Shopping Cart (${controller.itemCount})')),
              onTap: () async {
                // final result =
                //     await Get.toNamed(AppRoutes.cart, arguments: data);
                // if (result != null) {
                //   controller.getAllProduct();
                // }
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Log out'),
              onTap: () {
                //LocalRepositoryImpl().clearSession();
                Get.offNamed(AppRoutes.login);
              },
            ),
          ],
        ),
      ), 
      body: const FoodScreen(),);
  }
}