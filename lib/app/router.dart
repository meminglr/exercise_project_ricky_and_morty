import 'package:exercise_project_ricky_and_morty/views/app_view.dart';
import 'package:exercise_project_ricky_and_morty/views/characters_view/characters_view.dart';
import 'package:exercise_project_ricky_and_morty/views/favourites_view/favourites_view.dart';
import 'package:exercise_project_ricky_and_morty/views/sections_view/sections_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../views/locations_view/locations_view.dart';

final _routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  AppRoutes._();

  static const String characters = "/characters";
  static const String favourites = "/favourites";
  static const String locations = "/locations";
  static const String sections = "/sections";
}

final router = GoRouter(
  navigatorKey: _routerKey,
  initialLocation: AppRoutes.characters,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          AppView(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.characters,
              builder: (context, state) => CharactersView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.favourites,
              builder: (context, state) => FavouritesView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.locations,
              builder: (context, state) => LocationsView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.sections,
              builder: (context, state) => SectionsView(),
            ),
          ],
        ),
      ],
    ),
  ],
);
