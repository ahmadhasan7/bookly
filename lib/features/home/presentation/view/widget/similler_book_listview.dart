import 'package:flutter/material.dart';

import 'custom_list_view.dart';
class SimmilerBookListView extends StatelessWidget {
  const SimmilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: CustomListView());
          }),
    );
  }
}
