import 'package:bookly/core/utils/constants/styles.dart';
import 'package:bookly/features/home/controller/similler_book_cubit/similler_book_cubit.dart';
import 'package:bookly/features/home/presentation/view/widget/custom_list_view.dart';
import 'package:bookly/features/home/presentation/view/widget/custom_rating.dart';
import 'package:bookly/features/home/presentation/view/widget/similler_book_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_action.dart';
import 'custom_details_book_appbar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final books=BlocProvider.of<SimillerBookCubit>(context).bookModel;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.17),
                  child:  CustomListView(
                    imageUrl:books.volumeInfo.imageLinks!.thumbnail??"" ,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                 Text(
                   books.volumeInfo.title!??"",
                  style: Styles.textStyle30,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    books.volumeInfo.authors?[0]??"",
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 CustomRating(
                  rate: books.volumeInfo.ratingsCount??0,
                  m: books.volumeInfo.averageRating??0,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                 BookAction(
                  bookModel: books,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("this Similler Books")),
                const SizedBox(
                  height: 10,
                ),
                const SimmilerBookListView()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
