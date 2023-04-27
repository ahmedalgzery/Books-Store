// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:bookstore/features/Home/presentation/view/widgets/best_seller_item.dart';

class BsetSellerListView extends StatelessWidget {
  const BsetSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(top: 20),
        child: BestSellerItem(),
      ),
      itemCount: 10,
    );
  }
}
