import 'package:bookstore/core/utils/functions/launch_web_view.dart';
import 'package:bookstore/core/widgets/custom_button.dart';
import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              textColor: Colors.black,
              onPressed: () {},
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              textColor: Colors.white,
              onPressed: () {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                launchInWebViewOrVC(context,url);
              },
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0)),
            ),
          ),
        ],
      ),
    );
  }
}
