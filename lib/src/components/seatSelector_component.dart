import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/widget/build_chairs.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';

class SeatSelectorComponent extends StatefulWidget {
  @override
  State<SeatSelectorComponent> createState() => _SeatSelectorComponentState();
}

class _SeatSelectorComponentState extends State<SeatSelectorComponent> {
  @override
  Widget build(BuildContext context) {
    //  chairList
    Widget _chairList() {
      final Size size = Get.size;

      var _chairStatus = [
        [1, 1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 3, 1, 1],
        [1, 1, 1, 1, 1, 3, 3],
        [2, 2, 2, 1, 3, 1, 1],
        [1, 1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1],
      ];

      return Container(
        child: Column(
          children: [
            for (int i = 0; i < 6; i++)
              Container(
                margin: EdgeInsets.only(top: i == 3 ? size.height * .02 : 0),
                child: Row(
                  children: [
                    for (int x = 0; x < 9; x++)
                      Expanded(
                        flex: x == 0 || x == 8 ? 2 : 1,
                        child: x == 0 ||
                                x == 8 ||
                                (i == 0 && x == 1) ||
                                (i == 0 && x == 7) ||
                                (x == 4)
                            ? Container()
                            : Container(
                                height: size.width / 11 - 10,
                                margin: EdgeInsets.all(5),
                                child: _chairStatus[i][x - 1] == 1
                                    ? BuildChairs.availableChair()
                                    : _chairStatus[i][x - 1] == 2
                                        ? BuildChairs.selectedChair()
                                        : BuildChairs.reservedChair(),
                              ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      );
    }

    final Size size = Get.size;
    return Expanded(
      flex: 47,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width,
          ),
          Positioned(
            top: 48,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 40,
                  width: size.width * 0.65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    gradient: LinearGradient(
                      colors: [white, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 1],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: size.width * 0.55,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 6.8,
                        color: white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: size.height * 0.05,
            child: Container(
              width: size.width,
              child: _chairList(),
            ),
          ),
        ],
      ),
    );
  }
}
