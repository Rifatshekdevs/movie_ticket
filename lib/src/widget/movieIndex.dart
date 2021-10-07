import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/models/data.dart';
import 'package:movie_buy_ticket/src/screen/detailsScreen.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/genresFormet.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';
import 'package:movie_buy_ticket/src/widget/rating.dart';

class MovieIndex extends StatefulWidget {
  final int index;

  final double movieItemWidth;

  MovieIndex(
    this.index,
    this.movieItemWidth,
  );

  @override
  State<MovieIndex> createState() => _MovieIndexState();
}

class _MovieIndexState extends State<MovieIndex> {
  final movieData = MovieData();
  double maxMovieTranslate = 65;
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: appPadding + 4),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: 150,
        ),
        Container(
          height: size.height * .15,
          child: Align(
            alignment: Alignment.center,
            child: Image(
                // home imageLogo
                width: size.width / 2.5,
                image: movieData.movieList[widget.index].imageLogo.image),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        GenresFormet(movieData.movieList[widget.index].genre, white),
        SizedBox(
          height: 5,
        ),
        Rating(movieData.movieList[widget.index].rating),
        SizedBox(
          height: 40,
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (context, a1, a2) => DetailsScreen(
                        movie: movieData.movieList[widget.index],
                      ))),
          child: Container(
            height: 35,
            width: 90,
            decoration: BoxDecoration(
              color: secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: KText(
                text: 'BUY TICKET',
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'OpenSans Bold',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (context, a1, a2) => DetailsScreen(
                        movie: movieData.movieList[widget.index],
                      ))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image(
              image: movieData.movieList[widget.index].image.image,
              width: size.width * 0.5,
              height: size.height * 0.30,
            ),
          ),
        ),
        Column(
          children: [
            KText(
              text: movieData.movieList[widget.index].name,
              color: Colors.white,
              fontSize: size.width / 15,
              fontFamily: 'OpenSans Bold',
            ),
            SizedBox(
              height: size.height * 0.01,
            )
          ],
        ),
      ]),
    );
  }
}
