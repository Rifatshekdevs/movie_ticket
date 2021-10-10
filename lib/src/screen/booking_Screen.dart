import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/components/dateSelector_component.dart';
import 'package:movie_buy_ticket/src/widget/custom_Appbar_2.dart';

class BookingScreen extends StatefulWidget {
  final String movieName;
  BookingScreen({this.movieName});
  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //appBar
          CustomAppbar2(widget.movieName),

          //date selector
          DateselectorComponent(),
        ],
      ),
    );
  }
}
