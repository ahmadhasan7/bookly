import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
      child: Row(

        children: [
          Image.asset('assets/images/Logo.png',height: 20,),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search,size: 30,))
        ],
      ),
    );
  }
}
