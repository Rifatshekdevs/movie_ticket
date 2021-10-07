import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/models/movie.dart';
import 'package:movie_buy_ticket/src/screen/detailsScreen.dart';

class DetailBgScreen extends StatefulWidget {
  final Movie movie;
  final Size size;
  DetailBgScreen({this.movie, this.size});

  @override
  State<DetailBgScreen> createState() => _DetailBgScreenState();
}

class _DetailBgScreenState extends State<DetailBgScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          DetailsScreen(
            // details page bg image
            background: widget.movie.image,
          ),
        ],
      ),
    );
  }
}
