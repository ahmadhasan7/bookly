import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_button.dart';

class BookAction extends StatelessWidget {
  final BookModel bookModel;

  const BookAction({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: '19.99^',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              final _url = Uri.parse(bookModel.volumeInfo.infoLink!);
              final ur=(bookModel.volumeInfo.infoLink!);
              print(ur);
              if (await canLaunchUrl(_url)) {
                await launchUrl(_url);
              }
              throw Exception('Could not launch $_url');
            },
            text: 'Free Perview',
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}
