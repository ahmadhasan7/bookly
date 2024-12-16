import 'package:bookly/core/utils/constants/routers.dart';
import 'package:bookly/features/home/presentation/view/book_details_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:bookly/features/splash/presentation/view/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },

    ),
    GoRoute(
      path: Routers.homeeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },

    ),
    GoRoute(
      path: Routers.bookDetails,
      builder: (BuildContext context, GoRouterState state) {
        return const BookDetailsView();
      },

    ),
  ]);
}
