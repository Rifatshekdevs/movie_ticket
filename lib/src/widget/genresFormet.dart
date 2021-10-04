// ignore_for_file: missing_return

import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';

// ignore: must_be_immutable
class GenresFormet extends StatefulWidget {
  final List<String> genres;
  Color color;
  GenresFormet(this.genres, this.color);
  @override
  State<GenresFormet> createState() => _GenresFormetState();
}

class _GenresFormetState extends State<GenresFormet> {
  @override
  Widget build(BuildContext context) {
    Widget _dot = Container(
      height: 3,
      width: 3,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(5),
      ),
    );

    return Row(
        // logo down name
        children: List.generate(widget.genres.length, (index) {
      if (index < widget.genres.length - 1) {
        return Row(
          children: [
            KText(
              text: widget.genres[index],
              color: widget.color,
              fontSize: 12,
            ),
            _dot
          ],
        );
      } else {
        return KText(
          text: widget.genres[index],
          color: widget.color,
          fontSize: 12,
        );
      }
    }));
  }
}
