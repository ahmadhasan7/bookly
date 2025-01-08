import 'package:bookly/features/home/controller/similler_book_cubit/similler_book_cubit.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view.dart';

class SimmilerBookListView extends StatelessWidget {
  const SimmilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: BlocBuilder<SimillerBookCubit, SimillerBookState>(
        builder: (context, state) {
          if (state is SimillerBooksSuccess) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 6),
                      child: CustomListView(
                        imageUrl: state.books[index].volumeInfo.imageLinks!
                                .thumbnail ??
                            "",
                      ));
                });
          } else if (state is SimillerBooksFailure) {
            return Center(
              child: Text(state.errMassege),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
