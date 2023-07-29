import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/search/presentation/view/widgets/custom_text_field.dart';
import 'package:bookstore/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0,
          ),
          // CustomTextField for search input.
          CustomTextField(),
          SizedBox(
            height: 16.0,
          ),
          // Text widget to display "Search Result" title.
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16.0,
          ),
          // Expanded widget wraps the SearchResultListView to occupy remaining vertical space.
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
