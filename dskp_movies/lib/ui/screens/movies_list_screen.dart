import 'package:dio/dio.dart';
import 'package:dskp_movies/core/constants/colors.dart';
import 'package:dskp_movies/core/constants/styles.dart';
import 'package:dskp_movies/core/models/movie.dart';
import 'package:dskp_movies/ui/custom_widgets/movie_tile.dart';
import 'package:flutter/material.dart';

class MoviesListScreen extends StatefulWidget {
  const MoviesListScreen({Key key}) : super(key: key);

  @override
  _MoviesListScreenState createState() => _MoviesListScreenState();
}

class _MoviesListScreenState extends State<MoviesListScreen> {
  List<Movie> movies = [];
  bool isGotData = false;
  @override
  void initState() {
    _getData();
    super.initState();
  }

  _getData() async {
    print('@getData');
    try {
      Dio dio = Dio();
      final Response response = await dio.get(
          'https://5fd34c758cee610016ae0321.mockapi.io/api/movies_app/v1/movies');

      if (response.statusCode == 200) {
        // print(response.data);
        response.data.forEach((movieJson) {
          // print(movieJson);
          // print('\n \n \n');
          final Movie movie = Movie.fromJson(movieJson);
          movies.add(movie);
        });
        isGotData = true;
        setState(() {});
      } else {
        print('Data Request failed');
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: isGotData
            ? Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, index) => MovieTile(movies[index])))
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
