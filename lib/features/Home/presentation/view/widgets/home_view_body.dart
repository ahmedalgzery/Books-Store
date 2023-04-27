import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/best_seller%20_list_view.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best Seller',
                  style: Styles.testStyle18,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              // BsetSellerListView(),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BsetSellerListView(),
          ),
        ),
      ],
    );
  }
}
