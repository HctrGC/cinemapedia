import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/infrastructure/repositories/actor_respository_impl.dart';
import 'package:cinemapedia/infrastructure/datasources/actor_moviedb_datasource.dart';

final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorMoviedbDatasource());
});