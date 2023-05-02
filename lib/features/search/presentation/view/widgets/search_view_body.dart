import 'package:bookstore/features/search/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: const [
        SizedBox(
          height: 30.0,
        ),
        CustomTextField(),
      ],
    );
  }
}

