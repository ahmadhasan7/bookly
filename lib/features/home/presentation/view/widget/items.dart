import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/styles.dart';
class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50,bottom: 10,left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/test_image.png",
                          ),
                          fit: BoxFit.fill))),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
           Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: const Text(
                    "Harrt Potter And Globel Fire",
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3,),
                const Text("KJ Rowing",style: Styles.textStyle14,),
                Row(
                  children: [
                    Text("19.99",style:Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
                    const Spacer(),
                    const Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Text("4.8")

                      ],
                    )
                  ],
                )
              ],
                     ),
           ),

        ],
      ),
    );
  }
}
