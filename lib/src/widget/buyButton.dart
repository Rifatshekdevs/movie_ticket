import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class BuyButtom extends StatefulWidget {
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
          onPressed: () {},
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
