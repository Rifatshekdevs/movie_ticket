import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/models/data.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';

class BackgroundComponent extends StatefulWidget {
  @override
  _BackgroundComponentState createState() => _BackgroundComponentState();
}

class _BackgroundComponentState extends State<BackgroundComponent> {
  final movieData = MovieData();
  final Size size = Get.size;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: movieData.movieList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black,
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.black.withOpacity(0.4),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      black.withOpacity(0.1),
                      black.withOpacity(0.95),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 0.9],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
