class Movie {
  String title;
  String metaData;
  String imgUrl;

  Movie(this.title, this.metaData, this.imgUrl);

  Movie.fromJson(json) {
    this.title = json['title'];
    this.metaData = json['metaData'];
    this.imgUrl = json['imgUrl'];
  }
}

final List<Movie> dummyMovies = [
  Movie(
    'Gaji',
    '1 Episode | 2 GB',
    'assets/images/movie_cover.jpg',
  ),
  Movie(
    '3 Idios',
    '1 Episode | 2 GB',
    'assets/images/movie_cover.jpg',
  ),
  Movie(
    'Avatar',
    '1 Episode | 2 GB',
    'assets/images/movie_cover.jpg',
  ),
  Movie(
    'Need for speed',
    '1 Episode | 2 GB',
    'assets/images/movie_cover.jpg',
  ),
  Movie(
    'Dabang',
    '1 Episode | 2 GB',
    'assets/images/movie_cover.jpg',
  ),
];
