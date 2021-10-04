import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/models/data.dart';
import 'package:movie_buy_ticket/src/widget/movieIndex.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class MovieComponent extends StatefulWidget {
  final double movieItemWidth;

  MovieComponent(
    this.movieItemWidth,
  );
  @override
  State<MovieComponent> createState() => _MovieComponentState();
}

class _MovieComponentState extends State<MovieComponent> {
  final movieData = MovieData();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScrollSnapList(
        onItemFocus: (item) {},
        itemSize: widget.movieItemWidth,
        padding: EdgeInsets.zero,
        itemCount: movieData.movieList.length,
        scrollDirection: Axis.horizontal,
        updateOnScroll: true,
        itemBuilder: (context, index) {
          return MovieIndex(
            index,
            widget.movieItemWidth,
          );
        },
      ),
    );
  }
}
