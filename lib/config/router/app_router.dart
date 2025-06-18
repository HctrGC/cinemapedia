import 'package:go_router/go_router.dart';

import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:cinemapedia/presentation/views/views.dart';

final appRouter = GoRouter(
  routes: [

    ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(childView: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomeView(),
          routes: [
            GoRoute(
              path: '/movie/:id',
              name: MovieScreen.name,
              builder: (context, state) {
                return MovieScreen(movieID: state.pathParameters['id'] ?? 'no-id');
              }
            )
          ]
        ),

        GoRoute(
          path: '/favorites',
          builder: (context, state) => FavoritesView(),
        )
      ]
    )

    // Child Routes
    // GoRoute(
    //   path: '/',
    //   name: HomeScreen.name,
    //   builder: (context, state) => const HomeScreen(childView: HomeView(),),
    //   routes: [
    //     GoRoute(
    //       path: '/movie/:id',
    //       name: MovieScreen.name,
    //       builder: (context, state) {
    //         return MovieScreen(movieID: state.pathParameters['id'] ?? 'no-id');
    //       }
    //     )
    //   ]
    // ),

  ]
);