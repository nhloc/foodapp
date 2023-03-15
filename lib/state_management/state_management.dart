import 'package:flutter/material.dart';
import 'package:foodapp/state_management/presentation/main_binding.dart';
import 'package:foodapp/state_management/presentation/routes/app_pages.dart';
import 'package:foodapp/state_management/presentation/routes/app_routes.dart';
import 'package:get/get_navigation/get_navigation.dart';

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      initialBinding: MainBinding(),
      theme: ThemeData(fontFamily: 'Inter')
    );
  }
}