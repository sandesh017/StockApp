import 'package:flutter/material.dart';
import 'package:stockapp/webscrap/webscrap.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("News"),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              text: "Mero Lagani",
            ),
            Tab(
              text: "Share Sansar",
            ),
            Tab(
              text: "Nepali Paisa",
            )
          ],
        ),
      ),
      body: const TabBarView(
          controller: controller,
          children: [Text("MeroLagani"), Text("ShareSansar"), WebScraping()]),
    );
  }
}
