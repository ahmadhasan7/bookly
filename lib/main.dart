import 'package:bookly/core/utils/classes/api_services.dart';
import 'package:bookly/core/utils/classes/service_locator.dart';
import 'package:bookly/core/utils/constants/colors.dart';
import 'package:bookly/features/home/controller/newest_cubit/newest_cubit.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/classes/routers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/controller/books_cubit/books_cubit.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BooksCubit(
              getIt.get<HomeRepoImp>()
            )..fetchBooks(),
          ),
          BlocProvider(
            create: (context) => NewestCubit(
                getIt.get<HomeRepoImp>()
            ),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouters.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors().kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        ));
  }
}
