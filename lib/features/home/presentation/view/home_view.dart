import 'package:bookly/core/utils/constants/images.dart';
import 'package:bookly/features/home/presentation/view/widget/custom_appbar.dart';
import 'package:bookly/features/home/presentation/view/widget/custom_book_listview.dart';
import 'package:bookly/features/home/presentation/view/widget/custom_listview_item.dart';
import 'package:bookly/features/home/presentation/view/widget/items.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                CustomBookListView(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: ItemsListView(),
        )
      ],
    ));
  }
}
