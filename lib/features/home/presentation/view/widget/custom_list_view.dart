import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8/4,
      child: Container(
        width: 100,
        height: 200,
        decoration:  BoxDecoration(
            image:const DecorationImage(
                image: AssetImage(
                  "assets/images/test_image.png",
                ),
                fit: BoxFit.fill),
            borderRadius:BorderRadius.circular(10),
            color: Colors.red
        ),
      ),
    );
  }
}
