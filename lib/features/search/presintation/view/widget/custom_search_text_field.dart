import 'package:flutter/material.dart';
class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "Search",
          suffixIcon:
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
      ),
    );
  }
}
