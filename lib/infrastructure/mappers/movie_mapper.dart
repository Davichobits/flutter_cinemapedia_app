import 'package:cinemapedia_app/domain/entities/movie.dart';
import 'package:cinemapedia_app/infrastructure/models/movie_movidedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieFromMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != '') 
      ? 'https://image.tmdb.org/t/p/w500${ moviedb.backdropPath }' 
      : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: moviedb.posterPath != '' 
      ? 'https://image.tmdb.org/t/p/w500${ moviedb.posterPath }'
      : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);
}
