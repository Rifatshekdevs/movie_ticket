import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_buy_ticket/src/screen/payment_success_screen.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int value = 0;
  final paymentLables = [
    'Credit card / Debit card',
    'paypal',
    'google waelet',
    'Dutch Bangla Bank',
  ];
  final paymentIcons = [
    Icons.credit_card,
    Icons.payment_outlined,
    Icons.account_balance_wallet,
    Icons.payment_rounded
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: white,
          elevation: 0,
          title: KText(
            text: 'Payment',
            fontSize: 24,
            color: Colors.teal,
          ),
          leading: Container(
            margin: EdgeInsets.only(left: 15),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.teal,
                )),
          ),
        ),
        body: Column(
          children: [
            KText(
              text: 'Choose your payment method',
              fontFamily: 'OpenSans Bold',
            ),
            Expanded(
              child: ListView.separated(
                  itemCount: paymentLables.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        leading: Radio(
                          activeColor: primary,
                          value: index,
                          groupValue: value,
                          onChanged: (i) => setState(() => value = i),
                        ),
                        title: KText(
                          text: paymentLables[index],
                          fontSize: 14,
                          fontFamily: 'OpenSans Bold',
                        ),
                        trailing: Icon(
                          paymentIcons[index],
                          color: Colors.teal,
                        ));
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  }),
            ),
            // ignore: deprecated_member_use
            FlatButton(
              color: HexColor('#f6e58d'),
              onPressed: () {
                Get.to(() => PaymentSuccessScreen());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.85,
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
      ),
    );
  }
}
