import 'package:bookly/core/utils/classes/routers.dart';
import 'package:bookly/core/utils/constants/routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'items.dart';
class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics:const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(onTap: (){
            context.go(Routers.bookDetails);
          },child: const  Items());
        });
  }
}
