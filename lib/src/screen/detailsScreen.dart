import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_buy_ticket/src/models/movie.dart';
import 'package:movie_buy_ticket/src/widget/buyButton.dart';
import 'package:movie_buy_ticket/src/widget/conts.dart';
import 'package:movie_buy_ticket/src/widget/genresFormet.dart';
import 'package:movie_buy_ticket/src/widget/ktext.dart';
import 'package:movie_buy_ticket/src/widget/rating.dart';

class DetailsScreen extends StatefulWidget {
  final Movie movie;
  final Image background;

  DetailsScreen({this.background, this.movie});
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Widget _cast(List castList) {
    final Size size = Get.size;

    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: castList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: appPadding),
            child: Container(
              width: size.width / 6,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: widget.movie.castList[index].photo.image,
                      width: size.width / 6,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  KText(
                    // actor name
                    text: widget.movie.castList[index].name,
                    fontSize: 8,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return SafeArea(
      child: Positioned(
        // tap animation
        top: -48,
        bottom: 0,
        child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 500),
          tween: Tween<double>(begin: 0.25, end: 1),
          builder: (_, value, child) {
            return Transform.scale(
              scale: value,
              child: child,
            );
          },
          child: Stack(
            children: [
              Image(
                // detail bg image
                image: widget.movie.image.image,
                height: size.height,
                width: size.width,
                fit: BoxFit.cover,
              ),
              Container(
                height: size.height,
                width: size.width,
                color: Colors.black.withOpacity(.3),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => navigator.pop(context),
                      child: Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white.withOpacity(0.35),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Container(
                            //....
                            height: size.height * 0.67,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                              ),
                            ),
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.all(appPadding),
                              shrinkWrap: true,
                              primary: false,
                              children: [
                                Text(
                                  widget.movie.name,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Opensans Bold',
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 5.0),
                                Padding(
                                  padding: EdgeInsets.only(left: 165),
                                  child: GenresFormet(
                                    widget.movie.genre,
                                    Colors.grey[700],
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    KText(
                                      text: widget.movie.rating.toString(),
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Rating(widget.movie.rating)
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Director:' + widget.movie.director,
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 10),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                KText(
                                  text: 'Actors',
                                  fontSize: 18,
                                  fontFamily: 'OpenSans Bold',
                                ),
                                _cast(widget.movie.castList),
                                KText(
                                  text: 'Story',
                                  fontSize: 18,
                                  fontFamily: 'Opensans Bold',
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  widget.movie.storyLine,
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                BuyButtom(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
