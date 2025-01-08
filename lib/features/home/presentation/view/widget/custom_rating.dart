import 'package:flutter/material.dart';


class CustomRating extends StatelessWidget {
  final dynamic rate;
  final dynamic m;
  final MainAxisAlignment? mainAxisAlignment;

  const CustomRating({
    super.key,
    this.mainAxisAlignment, required this.rate, required this.m ,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment??MainAxisAlignment.start,
      children:  [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const SizedBox(width: 5,),
        Text('$rate'),
        const SizedBox(width: 5,),
        Opacity(opacity: 0.7, child: Text("$m"))
      ],
    );
  }
}


