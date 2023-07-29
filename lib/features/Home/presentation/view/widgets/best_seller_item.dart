import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // When the item is tapped, navigate to the BookDetailsView passing the bookModel as extra data
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(width: 30.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  Text(bookModel.volumeInfo.authors![0], style: Styles.textStyle14),
                  const SizedBox(height: 3.0),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.pageCount ?? 0,
                        count: bookModel.volumeInfo.pageCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
