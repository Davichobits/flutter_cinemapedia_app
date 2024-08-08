import 'package:cinemapedia_app/domain/entities/movie.dart';
import 'package:cinemapedia_app/infrastructure/models/movie_details.dart';
import 'package:cinemapedia_app/infrastructure/models/movie_movidedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieFromMovieDB movie) => Movie(
      adult: movie.adult,
      backdropPath: (movie.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500${movie.backdropPath}'
          : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
      genreIds: movie.genreIds.map((e) => e.toString()).toList(),
      id: movie.id,
      originalLanguage: movie.originalLanguage,
      originalTitle: movie.originalTitle,
      overview: movie.overview,
      popularity: movie.popularity,
      posterPath: movie.posterPath != ''
          ? 'https://image.tmdb.org/t/p/w500${movie.posterPath}'
          : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
      releaseDate: movie.releaseDate,
      title: movie.title,
      video: movie.video,
      voteAverage: movie.voteAverage,
      voteCount: movie.voteCount);

  static Movie movieDetailsToEntity(MovieDetails movie) => Movie(
    adult: movie.adult,
    backdropPath: (movie.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${movie.backdropPath}'
        : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
    genreIds: movie.genres.map((e) => e.name).toList(),
    id: movie.id,
    originalLanguage: movie.originalLanguage,
    originalTitle: movie.originalTitle,
    overview: movie.overview,
    popularity: movie.popularity,
    posterPath: movie.posterPath != ''
        ? 'https://image.tmdb.org/t/p/w500${movie.posterPath}'
        : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
    releaseDate: movie.releaseDate,
    title: movie.title,
    video: movie.video,
    voteAverage: movie.voteAverage,
    voteCount: movie.voteCount
  );
}
