import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class CustomAppbar2 extends StatefulWidget {
  final String movieName;
  CustomAppbar2(this.movieName);
  @override
  State<CustomAppbar2> createState() => _CustomAppbar2State();
}

class _CustomAppbar2State extends State<CustomAppbar2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 15,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: appPadding / 2),
        child: Container(
          width: Get.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              KText(
                text: widget.movieName,
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'OpenSans Bold',
              ),
              Positioned(
                  left: 24,
                  child: Material(
                    color: Colors.black,
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white.withOpacity(.5),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
