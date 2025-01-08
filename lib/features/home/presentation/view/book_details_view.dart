import 'package:bookly/features/home/controller/similler_book_cubit/similler_book_cubit.dart';
import 'package:bookly/features/home/presentation/view/widget/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});


  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();

}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimillerBookCubit>(context).fetchSimillerBooks();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsBody()),
    );
  }
}
