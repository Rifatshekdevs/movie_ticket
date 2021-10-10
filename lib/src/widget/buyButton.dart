import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/screen/booking_Screen.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class BuyButtom extends StatefulWidget {
  final String movieName;
  BuyButtom(this.movieName);
  @override
  State<BuyButtom> createState() => _BuyButtomState();
}

class _BuyButtomState extends State<BuyButtom> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 50,
        width: double.infinity,
        // ignore: deprecated_member_use
        child: FlatButton(
          color: secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          onPressed: () {
            Get.to(
              () => BookingScreen(
                movieName: widget.movieName,
              ),
            );
          },
          child: KText(
            text: 'Buy Ticket',
            color: Colors.white,
            fontSize: 22,
            fontFamily: 'OpenSans Bold',
          ),
        ),
      ),
    );
  }
}
