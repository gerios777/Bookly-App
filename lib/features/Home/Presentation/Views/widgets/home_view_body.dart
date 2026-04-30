import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/Presentation/Views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 18),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text("Best Seller", style: Styles.titleMedium),
        ),
      ],
    );
  }
}
