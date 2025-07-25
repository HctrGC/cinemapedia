import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movie) => Movie(
    adult: movie.adult, 
    backdropPath: movie.backdropPath != '' 
      ? 'https://image.tmdb.org/t/p/w500/${movie.backdropPath}' 
      : 'https://ih1.redbubble.net/image.4905811447.8675/flat,750x,075,f-pad,750x1000,f8f8f8.jpg', 
    genreIds: movie.genreIds.map((e) => e.toString()).toList(), 
    id: movie.id, 
    originalLanguage: movie.originalLanguage, 
    originalTitle: movie.originalTitle, 
    overview: movie.overview, 
    popularity: movie.popularity, 
    posterPath: movie.posterPath != ''
      ? 'https://image.tmdb.org/t/p/w500/${movie.posterPath}'
      : 'https://ih1.redbubble.net/image.4905811447.8675/flat,750x,075,f-pad,750x1000,f8f8f8.jpg', 
    releaseDate: movie.releaseDate, 
    title: movie.title, 
    video: movie.video, 
    voteAverage: movie.voteAverage, 
    voteCount: movie.voteCount
  );

  static Movie movieDetailsToEntity(MovieDetails movie) => Movie(
    adult: movie.adult,
    backdropPath: movie.backdropPath != ''
      ? 'https://image.tmdb.org/t/p/w500/${movie.backdropPath}'
      : 'https://ih1.redbubble.net/image.4905811447.8675/flat,750x,075,f-pad,750x1000,f8f8f8.jpg', 
    genreIds: movie.genres.map((e) => e.name).toList(),
    id: movie.id,
    originalLanguage: movie.originalLanguage,
    originalTitle: movie.originalTitle,
    overview: movie.overview,
    popularity: movie.popularity,
    posterPath: movie.posterPath != ''
      ? 'https://image.tmdb.org/t/p/w500/${movie.posterPath}'
      : 'https://ih1.redbubble.net/image.4905811447.8675/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
    releaseDate: movie.releaseDate != null 
      ? movie.releaseDate!
      : DateTime.now(),
    title: movie.title,
    video: movie.video,
    voteAverage: movie.voteAverage,
    voteCount: movie.voteCount
  );
}