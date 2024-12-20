import 'package:bookly/features/search/presintation/view/widget/search_result.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:CustomSearchTextField(),

            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10,),
            ),
            SliverFillRemaining(
              child: SearchResult(),
            )
          ],
        ),
      )
    );
  }
}


