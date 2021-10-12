import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

class LocationTextComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.location_on,
            color: white,
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(
                text: 'Carnivel Cinemas',
                fontSize: 14,
                fontFamily: 'OpenSans Bold',
                color: white,
              ),
              KText(
                text: 'Kodungarull carela,India',
                fontSize: 12,
                fontFamily: 'OpenSans Bold',
                color: grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
