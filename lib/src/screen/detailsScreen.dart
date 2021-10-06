import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/models/movie.dart';
import 'package:movie_buy_ticket/src/screen/detailsBackgroundScreen.dart';

class DetailsScreen extends StatefulWidget {
  final Movie movie;
  final Size size;
  DetailsScreen({this.movie, this.size});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          DetailsbackgroundScreen(
            // details page bg image
            background: widget.movie.image,
          ),
        ],
      ),
    );
  }
}
