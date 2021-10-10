import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class DateselectorComponent extends StatefulWidget {
  @override
  State<DateselectorComponent> createState() => _DateselectorComponentState();
}

class _DateselectorComponentState extends State<DateselectorComponent> {
  int dateIndexSelected = 1;
  DateTime currentDate = DateTime.now();

  String _dayFormet(int dayweek) {
    switch (dayweek) {
      case 1:
        return 'MO';
        break;
      case 2:
        return 'TU';
        break;
      case 3:
        return 'WE';
        break;
      case 4:
        return 'TH';
        break;
      case 5:
        return 'FR';
        break;
      case 6:
        return 'SA';
        break;
      case 7:
        return 'SU';
        break;
      default:
        return 'MO';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 13,
        child: Padding(
          padding: EdgeInsets.only(left: 25),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: white.withOpacity(.3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
              ),
              Container(
                width: Get.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    final date = currentDate.add(Duration(days: index));
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          dateIndexSelected = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        width: 44,
                        decoration: BoxDecoration(
                          color: dateIndexSelected == index
                              ? primary
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KText(
                              text: date.day.toString(),
                              fontSize: 22,
                              fontFamily: 'OpenSans Bold',
                              color: index == dateIndexSelected
                                  ? black
                                  : Colors.white,
                            ),
                            KText(
                              text: _dayFormet(date.weekday),
                              fontSize: 14,
                              fontFamily: 'OpenSans Bold',
                              color: index == dateIndexSelected
                                  ? black
                                  : Colors.white.withOpacity(.4),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
