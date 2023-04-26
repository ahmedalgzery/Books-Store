import 'package:bookstore/features/Home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}


