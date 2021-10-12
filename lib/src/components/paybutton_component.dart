import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/screen/payment_screen.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class PaybuttoComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Expanded(
      flex: 13,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appPadding * 1.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: white),
                      ),
                    ),
                    KText(
                      text: 'Available',
                      color: white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                    ),
                    KText(
                      text: 'Reserved',
                      color: white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primary,
                      ),
                    ),
                    KText(
                      text: 'Selected',
                      color: white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: size.height * 0.08,
                width: size.width * 0.45,
                child: Center(
                  child: KText(
                    text: '\$20.00',
                    fontSize: 24,
                    fontFamily: 'OpenSans Bold',
                    color: white,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: secondary,
                onPressed: () {
                  Get.to(() => PaymentScreen());
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Container(
                  height: size.width * 0.08,
                  width: size.width * 0.45,
                  child: Center(
                      child: KText(
                    fontSize: 22,
                    fontFamily: 'OpenSans Bold',
                    text: 'Pay',
                    color: white,
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
