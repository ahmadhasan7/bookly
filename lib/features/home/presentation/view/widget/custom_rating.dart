import 'package:flutter/material.dart';


class CustomRating extends StatelessWidget {
  final MainAxisAlignment? mainAxisAlignment;

  const CustomRating({
    super.key,
    this.mainAxisAlignment ,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment??MainAxisAlignment.start,
      children:const  [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(width: 5,),
        Text("4.8"),
        SizedBox(width: 5,),
        Opacity(opacity: 0.7, child: Text("(218)"))
      ],
    );
  }
}


