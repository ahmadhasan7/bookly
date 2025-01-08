import 'package:bookly/core/utils/classes/routers.dart';
import 'package:bookly/features/home/controller/books_cubit/books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants/routers.dart';
import 'custom_list_view.dart';

class CustomBookListView extends StatelessWidget {
  const CustomBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksCubit, BooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.31,
            child: ListView.builder(
                physics: const RangeMaintainingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: (){
                          context.push(Routers.bookDetails,extra: state.books[index]);
                        },
                        child: CustomListView(
                          imageUrl: state.books[index].volumeInfo.imageLinks!
                                  .thumbnail ??
                              '',
                        ),
                      ));
                }),
          );
        } else if (state is FeaturedBooksFailure) {
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
