import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/components/backgroundComponent.dart';
import 'package:movie_buy_ticket/src/components/movieComponet.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // home center list movie
  double get movieItemWidth => size.width / 2 + 48;

  Size get size => Get.size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // home background screen
          BackgroundComponent(),

          MovieComponent(movieItemWidth),
        ],
      ),
    );
  }
}
