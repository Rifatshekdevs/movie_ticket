import 'package:flutter/cupertino.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';

class BuildChairs {
  static Widget selectedChair() {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }

  static Widget availableChair() {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        border: Border.all(color: white),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }

  static Widget reservedChair() {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
