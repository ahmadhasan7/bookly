import 'package:bookly/core/utils/classes/service_locator.dart';
import 'package:bookly/core/utils/constants/routers.dart';
import 'package:bookly/features/home/controller/similler_book_cubit/similler_book_cubit.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/features/home/presentation/view/book_details_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:bookly/features/search/presintation/view/search_view.dart';
import 'package:bookly/features/splash/presentation/view/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        return BlocProvider(
          create: (context) => SimillerBookCubit(
              getIt.get<HomeRepoImp>(), state.extra as BookModel),
          child: const BookDetailsView(),
        );
      },
    ),
    GoRoute(
      path: Routers.search,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchView();
      },
    ),
  ]);
}
