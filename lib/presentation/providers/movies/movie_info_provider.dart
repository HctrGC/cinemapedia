import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/domain/entities/movie.dart';
import 'movies_repository_provider.dart';


final movieInfoProvider = StateNotifierProvider((ref) {
  final getMovieInfo = ref.watch(movieRepositoryProvider).getMovieByID;

  return MovieMapNotifier(getMovie: getMovieInfo);
},);

typedef GetMovieCallback = Future<Movie>Function(String movieID);

class MovieMapNotifier extends StateNotifier<Map<String, Movie>>{
  final GetMovieCallback getMovie;

  MovieMapNotifier({
    required this.getMovie
  }): super({});

  Future<void> loadMovie(String movieID) async {
    if (state[movieID] != null) return;

    final movie = await getMovie(movieID);

    state = {...state, movieID: movie};
  }

}