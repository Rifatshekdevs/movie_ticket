import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/models/movie_cast.dart';

class Movie {
  final int id;
  final String name;
  final List<String> genre;
  final double rating;
  final String director;
  final String storyLine;
  final Image image;
  final Image imageLogo;

  // ignore: deprecated_member_use
  List<MovieCast> castList = List();

  Movie({
    this.id,
    this.genre,
    this.name,
    this.rating,
    this.director,
    this.storyLine,
    this.image,
    this.imageLogo,
    this.castList,
  });
}
