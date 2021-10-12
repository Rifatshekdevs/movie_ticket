import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/components/dateSelector_component.dart';
import 'package:movie_buy_ticket/src/components/locationText_Component.dart';
import 'package:movie_buy_ticket/src/components/paybutton_component.dart';
import 'package:movie_buy_ticket/src/components/seatSelector_component.dart';
import 'package:movie_buy_ticket/src/components/time_selector_component.dart';
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
          //
          TimeSelectorComponent(),
          // locationText
          LocationTextComponent(),
          // seat
          SeatSelectorComponent(),
          // pay button section
          PaybuttoComponent(),
        ],
      ),
    );
  }
}
