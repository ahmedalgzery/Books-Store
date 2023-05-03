import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/search/presentation/view/widgets/custom_text_field.dart';
import 'package:bookstore/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 30.0,
          ),
          CustomTextField(),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16.0,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
