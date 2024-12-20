import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants/routers.dart';
import '../../../../home/presentation/view/widget/items.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

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