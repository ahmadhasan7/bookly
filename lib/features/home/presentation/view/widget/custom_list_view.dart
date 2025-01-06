import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final String imageUrl;

  const CustomListView({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            placeholder: (context, url) => const Center(child:  CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ));
  }
}
