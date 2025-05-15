import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieDatasource {

  Future<List<Movie>> getNowPlayingMovies({int page = 1});

}