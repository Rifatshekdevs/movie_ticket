import 'package:flutter/material.dart';
import 'package:movie_buy_ticket/src/models/movie.dart';
import 'package:movie_buy_ticket/src/models/movie_cast.dart';

class MovieData {
  List<Movie> movieList;

  MovieData() {
    // ignore: deprecated_member_use
    movieList = List();

    movieList.add(
      Movie(
          id: 0,
          name: 'Togo',
          rating: 8.0,
          genre: [
            'Drama',
          ],
          director: 'Ericson Core',
          storyLine:
              'Togo (1913 – December 5, 1929) was the lead sled dog of Leonhard Seppala and his dog sled team in the 1925 serum run to Nome across central and northern Alaska. Even though he covered more distance (260 miles) than his co-sledder Balto (55 miles), he didn\'t get as much fame.',
          image: Image.asset('assets/images/togo.jpg'),
          imageLogo: Image.asset('assets/images/togologo.png'),
          castList: [
            MovieCast(
              name: "Willem Dafoe",
              photo: Image.asset("assets/images/cast/willem.jpg"),
            ),
            MovieCast(
              name: "Julianne\n Nicholson",
              photo: Image.asset("assets/images/cast/julianne.jpg"),
            ),
            MovieCast(
              name: "Christopher\n Heyerdahl",
              photo: Image.asset("assets/images/cast/christopher.jpg"),
            ),
            MovieCast(
              name: "Michael\n McElhatton",
              photo: Image.asset("assets/images/cast/michael.jpg"),
            )
          ]),
    );
    movieList.add(
      Movie(
          id: 1,
          name: 'Joker',
          rating: 8.5,
          genre: ["Crime", "Drama"],
          director: 'Todd Phillips',
          storyLine:
              "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks -- the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he's part of the world around him. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.",
          image: Image.asset('assets/images/joker.jpg'),
          imageLogo: Image.asset('assets/images/jokerlogo.png'),
          castList: [
            MovieCast(
              name: "Joaquin Phoenix",
              photo: Image.asset("assets/images/cast/joaquin.jpg"),
            ),
            MovieCast(
              name: "Robert De Niro",
              photo: Image.asset("assets/images/cast/niro.jpg"),
            ),
            MovieCast(
              name: "Zazie Beetz",
              photo: Image.asset("assets/images/cast/zazie.jpg"),
            ),
            MovieCast(
              name: "Frances Conroy",
              photo: Image.asset("assets/images/cast/frances.jpg"),
            ),
          ]),
    );
    movieList.add(
      Movie(
          id: 2,
          name: 'The Apes',
          rating: 5.7,
          genre: ["Action", "Adventure", "Fantasy"],
          director: 'Tim Burton',
          storyLine:
              "Complex sociological themes run through this science-fiction classic about three astronauts marooned on a futuristic planet where apes rule and humans are slaves. The stunned trio discovers that these highly intellectual simians can both walk upright and talk. They have even established a class system and a political structure. The astronauts suddenly find themselves part of a devalued species, trapped and imprisoned by the apes.",
          image: Image.asset('assets/images/apes.jpg'),
          imageLogo: Image.asset('assets/images/apeslogo.png'),
          castList: [
            MovieCast(
              name: "Cornelius",
              photo: Image.asset("assets/images/cast/cornelius.jpg"),
            ),
            MovieCast(
              name: "Dr. Zaius",
              photo: Image.asset("assets/images/cast/zaius.jpg"),
            ),
            MovieCast(
              name: "Dr. Zira",
              photo: Image.asset("assets/images/cast/zira.jpg"),
            ),
            MovieCast(
              name: "Nova",
              photo: Image.asset("assets/images/cast/nova.jpg"),
            )
          ]),
    );
  }
}
