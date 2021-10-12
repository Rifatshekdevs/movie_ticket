import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/success.gif'),
            height: 150.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: KText(
              text: 'Your payment was done successfully',
              fontFamily: 'OpenSans Bold',
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            // ignore: deprecated_member_use
            child: FlatButton(
              color: HexColor('#f6e58d'),
              onPressed: () {
                Get.back();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.80,
                child: Center(
                    child: KText(
                  fontSize: 22,
                  fontFamily: 'OpenSans Bold',
                  text: 'OK',
                  color: Colors.white,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
