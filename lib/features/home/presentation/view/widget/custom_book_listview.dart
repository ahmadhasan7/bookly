import 'package:flutter/material.dart';

import 'custom_list_view.dart';

class CustomBookListView extends StatelessWidget {
  const CustomBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.31,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:  CustomListView());
          }),
    );
  }
}