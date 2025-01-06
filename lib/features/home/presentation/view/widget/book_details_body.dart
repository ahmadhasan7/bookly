import 'package:bookly/core/utils/constants/styles.dart';
import 'package:bookly/features/home/presentation/view/widget/custom_list_view.dart';
import 'package:bookly/features/home/presentation/view/widget/custom_rating.dart';
import 'package:bookly/features/home/presentation/view/widget/similler_book_listview.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'custom_details_book_appbar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: const CustomListView(
                    imageUrl: "https://images.app.goo.gl/t7xWDZc732psK9f77",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "The Jungle Book",
                  style: Styles.textStyle30,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Rudyard Kipling",
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                const BookAction(),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("this Simmiler Books")),
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
