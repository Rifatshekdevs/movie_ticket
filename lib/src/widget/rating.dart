import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';

class Rating extends StatefulWidget {
  final double rating;
  Rating(this.rating);
  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    Widget star(bool fill) {
      return Container(
        child: Icon(
          Icons.star,
          size: 16,
          color: fill ? primary : grey,
        ),
      );
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: missing_return
        children: List.generate(5, (index) {
          if (index < (widget.rating / 2).round()) {
            return star(true);
          } else {
            return star(false);
          }
        }));
  }
}
