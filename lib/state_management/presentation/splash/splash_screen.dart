import 'package:flutter/material.dart';
import 'package:foodapp/state_management/core/master/master_data.dart';
import 'package:foodapp/state_management/presentation/routes/app_routes.dart';
import 'package:foodapp/state_management/presentation/splash/splash_pageview.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Fast and Friendly for all", "image": MasterUI.splash_img_1},
    {"text": "Fast delivery team", "image": MasterUI.splash_img_2}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            Expanded(
                flex: 8,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashPageView(
                          text: splashData[index]["text"],
                          image: splashData[index]["image"],
                        ))),
            Expanded(
                flex: 2,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(splashData.length,
                              (index) => buildDot(index: index)),
                        ),
                        const Spacer(flex: 3),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange),
                            onPressed: () {
                              Get.offNamed(AppRoutes.login);
                            },
                            child: const Text('Continue', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                        const Spacer(flex: 1)
                      ],
                    )))
          ]),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration.zero,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.orange : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
