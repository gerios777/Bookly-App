import 'package:bookly_app/features/Home/Presentation/Views/widgets/books_details_section.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const BookDetailsSection(),
              const SimilarBooksSection(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
