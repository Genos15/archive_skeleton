import 'package:archive_skeleton/di/setup_service_locator.dart';
import 'package:archive_skeleton/presentation/pages/desktop/home_screen.dart';
import 'package:archive_skeleton/presentation/pages/desktop/login_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/components/login/repository/auth_repository.dart';

final desktopRouter = GoRouter(
  debugLogDiagnostics: true,
  urlPathStrategy: UrlPathStrategy.path,
  routes: <GoRoute>[
    GoRoute(
      name: 'Home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      name: 'Login',
      path: '/login',
      builder: (BuildContext context, GoRouterState state) =>
          const LoginScreen(),
    ),
  ],
  redirect: (state) {
    final loggingIn = state.subloc == '/login';
    final loggedIn = it<AuthRepository>().isLogged;
    if (!loggedIn && !loggingIn /*&& !creatingAccount*/) return '/login';
    // if (loggedIn && (loggingIn/* || creatingAccount*/)) return rootLoc;
    return null;
  },
);

final mobileRouter = GoRouter(
  debugLogDiagnostics: true,
  urlPathStrategy: UrlPathStrategy.path,
  routes: <GoRoute>[],
  redirect: (state) {
    final loggingIn = state.subloc == '/login';
    final loggedIn = it<AuthRepository>().isLogged;
    if (!loggedIn && !loggingIn /*&& !creatingAccount*/) return '/login';
    // if (loggedIn && (loggingIn/* || creatingAccount*/)) return rootLoc;
    return null;
  },
);
