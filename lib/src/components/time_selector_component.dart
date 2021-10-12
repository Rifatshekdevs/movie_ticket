import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class TimeSelectorComponent extends StatefulWidget {
  @override
  State<TimeSelectorComponent> createState() => _TimeSelectorComponentState();
}

class _TimeSelectorComponentState extends State<TimeSelectorComponent> {
  int timeIndexSelected = 1;

  var time = [
    ['01.30', 10],
    ['06.30', 15],
    ['10.30', 20],
  ];
  Widget _timeItem(String time, int price, bool active) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: appPadding * 0.75),
      decoration: BoxDecoration(
        border: Border.all(
          color: active ? primary : white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                text: time,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'OpenSans Bold',
                  color: active ? primary : white,
                ),
                children: [
                  TextSpan(
                      text: 'PM',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'OpenSans Bold',
                        color: active ? primary : white,
                      ))
                ]),
          ),
          KText(
            text: 'From\$$price',
            fontSize: 12,
            fontFamily: 'OpenSans Bold',
            color: grey,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 17,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(left: index == 0 ? 32 : 0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    timeIndexSelected = index;
                  });
                },
                child: _timeItem(time[index][0], time[index][1],
                    index == timeIndexSelected ? true : false),
              ),
            );
          },
        ),
      ),
    );
  }
}
