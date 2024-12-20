import 'package:bookly/core/utils/classes/routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants/routers.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Logo.png',
            height: 20,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                context.push(Routers.search);
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
    );
  }
}
