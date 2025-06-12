import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/presentation/providers/actors/actors_repository_provider.dart';

final actorsByMovieProvider = StateNotifierProvider((ref) {
  final actorsRepository = ref.watch(actorsRepositoryProvider).getActorsByMovie;

  return ActorsByMovieNotifier(getActors: actorsRepository);
},);

typedef GetActorsCallback = Future<List<Actor>>Function(String movieID);

class ActorsByMovieNotifier extends StateNotifier<Map<String, List<Actor>>>{
  final GetActorsCallback getActors;

  ActorsByMovieNotifier({
    required this.getActors
  }): super({});

  Future<void> loadActors(String movieID) async {
    if (state[movieID] != null) return;

    final actors = await getActors(movieID);

    state = {...state, movieID: actors};
  }

}