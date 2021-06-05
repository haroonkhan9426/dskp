import 'package:dskp_movies/core/constants/styles.dart';
import 'package:dskp_movies/core/models/movie.dart';
import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  Movie movie;

  MovieTile(this.movie);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          /// Image
          Container(
            height: 100,
            width: 150,
            color: Colors.white,
            child: Image(
              image: NetworkImage(movie.imgUrl),
              height: 100,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// title text
              Text(movie.title, style: lightBrownRegularTextStyle),

              SizedBox(height: 10),

              /// meta data text
              Text(movie.metaData, style: lightBrownRegularTextStyle),
            ],
          )

          /// Text Widgets
        ],
      ),
    );
  }
}
