import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:radio_abia/core/presentation/bottom_nav.dart';
import 'package:radio_abia/core/presentation/main_player_view.dart';
import 'package:radio_abia/core/presentation/routes/route_utils.dart';
import 'package:radio_abia/live/presentation/screens/live_screen.dart';
import 'package:radio_abia/podcast/presentation/screens/podcast_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shellRoot');

final _shellNavigatorChannel = GlobalKey<NavigatorState>();
final _shellNavigatorPodcast =
    GlobalKey<NavigatorState>(debugLabel: 'shellPodcast');
// final _shellNavigatorFavorite =
//     GlobalKey<NavigatorState>(debugLabel: 'shellStatute');

// Go router config
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Pages.channel.screenPath,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// MainWrapper
      StatefulShellRoute(
        builder: (context, state, navigationShell) {
          return navigationShell;
        },
        navigatorContainerBuilder: (context, navigationShell, children) =>
            BottomNav(navigationShell: navigationShell, children: children),
        branches: <StatefulShellBranch>[
          /// Brach Channel
          StatefulShellBranch(
            navigatorKey: _shellNavigatorChannel,
            routes: <RouteBase>[
              GoRoute(
                path: Pages.channel.screenPath,
                name: Pages.channel.screenName,
                builder: (BuildContext context, GoRouterState state) =>
                    const LiveScreen(),
              ),
            ],
          ),

          /// Brach Podcast
          StatefulShellBranch(
            navigatorKey: _shellNavigatorPodcast,
            routes: <RouteBase>[
              GoRoute(
                path: Pages.podcast.screenPath,
                name: Pages.podcast.screenName,
                builder: (BuildContext context, GoRouterState state) =>
                    const PodcastScreen(),
              ),
            ],
          ),

          /// Brach Favorite
          // StatefulShellBranch(
          //   navigatorKey: _shellNavigatorFavorite,
          //   routes: <RouteBase>[
          //     GoRoute(
          //       path: Pages.favorite.screenPath,
          //       name: Pages.favorite.screenName,
          //       builder: (BuildContext context, GoRouterState state) =>
          //           const FavoriteScreen(),
          //     ),
          //   ],
          // ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: Pages.player.screenPath,
        name: Pages.player.screenName,
        builder: (context, state) => MainPlayerView(key: state.pageKey),
      ),
    ],
  );
});
