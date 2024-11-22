import 'package:bookly/core/utils/constants/colors.dart';
import 'package:bookly/features/splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(const BooklyApp());
}
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:AppColors().kPrimaryColor
      ),
      home:const SplashScreen(),
    );
  }
}
