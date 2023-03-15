import 'package:flutter/material.dart';

class RestaurantDetailScreen extends StatefulWidget {
    const RestaurantDetailScreen(
      {super.key,
      required this.name,
      required this.address,
      required this.image});
  final String? name;
  final String? address;
  final String? image;
  @override
  State<RestaurantDetailScreen> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<RestaurantDetailScreen> with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text!.toLowerCase();
          return Center(
            child: Text(
              'This is the $label tab',
              style: const TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      ),
    );
  }
}