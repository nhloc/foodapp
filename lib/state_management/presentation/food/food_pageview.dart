import 'package:flutter/material.dart';
import 'package:foodapp/state_management/core/master/master_data.dart';

class FoodPageView extends StatefulWidget {
  FoodPageView({super.key});

  @override
  State<FoodPageView> createState() => _FoodPageViewState();
}

class _FoodPageViewState extends State<FoodPageView> {
  // ignore: non_constant_identifier_names
  List<Map<String, String>> FoodDataPageView = [
    {"image": MasterUI.imagefood1},
    {"image": MasterUI.foodypizza1},
    {"image": MasterUI.foodypizza2}
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.81,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: FoodDataPageView.length,
                itemBuilder: (context, index) =>
                    Image.asset(FoodDataPageView[index]["image"]!)),
            Positioned(
                bottom: 16,
                right: 16,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                  FoodDataPageView.length,
                  (index) => Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: IndicatorDot(isActive: index == currentPage)),
                ))),
          ],
        ));
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 10,
      decoration: BoxDecoration(
          color: isActive ? Colors.deepOrange : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
