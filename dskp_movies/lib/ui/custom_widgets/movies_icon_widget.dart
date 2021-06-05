import 'package:flutter/material.dart';

class MoviesIconWidget extends StatelessWidget {
  const MoviesIconWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/movie(1).png'),
      height: 100,
      width: 100,
    );
  }
}
