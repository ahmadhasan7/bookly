import 'package:bookly/core/utils/constants/images.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
   SplashBody({super.key});
  @override
  State<SplashBody> createState() => _SplashBodyState();
  late AnimationController animationController;
  late Animation slidingAnimation;
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppImages.logo),
          const SizedBox(height: 4,),
          const Text("Read Free Book",textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
