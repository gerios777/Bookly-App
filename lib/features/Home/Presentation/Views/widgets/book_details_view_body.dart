import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/book_rating.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/books_action.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/similarBooksListView.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),

        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.texstStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const Padding(padding: EdgeInsets.all(8.0), child: BooksAction()),
        const SizedBox(height: 30),
        Align(
          alignment: Alignment.centerLeft,

          child: Text(
            "You can also like",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15),
        SimilarBooksListView(),
      ],
    );
  }
}
