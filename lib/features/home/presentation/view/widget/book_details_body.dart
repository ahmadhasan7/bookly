import 'package:flutter/material.dart';

import 'custom_details_book_appbar.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 30),child: Column(
        children: [
          CustomBookDetailsAppBar()
        ],
      ),),
    );
  }
}
