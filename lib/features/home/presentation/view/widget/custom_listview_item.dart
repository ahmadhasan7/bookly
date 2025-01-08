import 'package:bookly/core/utils/classes/routers.dart';
import 'package:bookly/core/utils/constants/routers.dart';
import 'package:bookly/features/home/controller/newest_cubit/newest_cubit.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'items.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestCubit, NewestState>(
      builder: (context, state) {
        if (state is FeatureNewestBooksSuccess) {
          return ListView.builder(
            physics:const  NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      context.go(Routers.bookDetails,extra: state.books[index]);
                    },
                    child:  Items(bookModel:state.books[index]));
              });
        } else if (state is FeaturedNewestBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
